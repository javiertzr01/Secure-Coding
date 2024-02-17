//===- Software-Verification-Teaching Assignment 2-------------------------------------//
//
//     SVF: Static Value-Flow Analysis Framework for Source Code
//
// Copyright (C) <2013->
//

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.
//
//===-----------------------------------------------------------------------===//

/*
 // Software-Verification-Teaching Assignment 2 : ICFG graph traversal (Control-flow reachability analysis)
 //
 // 
 */

#include "Assignment-2.h"

using namespace SVF;
using namespace SVFUtil;

/// TODO: Implement your context-sensitive ICFG traversal here to traverse each program path (once for any loop) from src edge to dst node
void ICFGTraversal::dfs(const ICFGEdge *src, const ICFGNode *dst) {
    std::pair<const ICFGEdge *, CallStack> input = make_pair(src, callstack);
    visited.insert(input);
    path.push_back(src);
    if(src->getDstNode() == dst){
        printICFGPath();
    }
    for(auto edge: src->getDstNode()->getOutEdges()){
        std::pair<const ICFGEdge *, CallStack> isVisitedPair = make_pair(edge, callstack);
        const bool isVisited = visited.find(isVisitedPair) != visited.end();
        if (!isVisited){
            if(edge->isIntraCFGEdge()){
                if(handleIntra(dyn_cast<IntraCFGEdge>(edge))){
                    dfs(edge, dst);
                }
            }
            if(edge->isCallCFGEdge()){
                if(handleCall(dyn_cast<CallCFGEdge>(edge))){
                    dfs(edge, dst);
                }
            }
            if(edge->isRetCFGEdge()){
                if(handleRet(dyn_cast<RetCFGEdge>(edge))){
                    dfs(edge, dst);
                }
            }
        }
    }
    visited.erase(input);
    path.pop_back();
}

/// TODO: print each path once this method is called, and
/// add each path as a string into std::set<std::string> paths
/// Print the path in the format "START: 1->2->4->5->END", where -> indicate an ICFGEdge connects two ICFGNode IDs
void ICFGTraversal::printICFGPath()
{
    std::string path_string = "START: ";
    for (auto p : path){
        path_string = path_string + std::to_string(p->getDstNode()->getId()) + "->";
    }
    
    path_string += "END";
    paths.insert(path_string);
}

bool ICFGTraversal::handleCall(const CallCFGEdge* call)
{
    callstack.push_back(call->getCallSite());
    return true;
}

bool ICFGTraversal::handleRet(const RetCFGEdge* ret)
{
    if (!callstack.empty())
    {
        if(callstack.back() == ret->getCallSite())
        {
            callstack.pop_back();
            return true;
        }
        else
        {
            return false;
        }
    }
    return true;
}

/// Program entry, do not change
void ICFGTraversal::analyse()
{
    std::set<const ICFGNode *> sources;
    std::set<const ICFGNode *> sinks;
    for (const ICFGNode *src : identifySource(sources)) {
        assert(SVFUtil::isa<GlobalICFGNode>(src) && "dfs should start with GlobalICFGNode!");
        for (const ICFGNode *sink: identifySink(sinks)) {
            const IntraCFGEdge* startEdge = new IntraCFGEdge(nullptr,const_cast<ICFGNode*>(src));
            handleIntra(startEdge);
            dfs(startEdge, sink);
            resetSolver();
        }
    }
}
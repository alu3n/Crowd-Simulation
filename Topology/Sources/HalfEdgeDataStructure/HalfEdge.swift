//
//  HalfEdge.swift
//  Topology
//
//  Created by Vojtěch Pröschl on 09.01.2025.
//

class HalfEdge<TVertexPayload> {
    var vertex: Vertex<TVertexPayload>?
    var twin: HalfEdge<TVertexPayload>?
    var next: HalfEdge<TVertexPayload>?
    var edge: Edge<TVertexPayload>?
    var face: Face<TVertexPayload>?
}

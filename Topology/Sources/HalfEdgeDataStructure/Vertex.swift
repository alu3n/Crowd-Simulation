//
//  Vertex.swift
//  Topology
//
//  Created by Vojtěch Pröschl on 09.01.2025.
//

class Vertex<TVertexPayload> {
    var payload: TVertexPayload?
    var halfEdge: HalfEdge<TVertexPayload>?
}

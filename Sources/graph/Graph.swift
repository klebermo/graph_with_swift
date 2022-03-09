extension Int: Initializable {}

class Graph {
    var vertexList: List<Vertex>

    init() {
        vertexList = List<Vertex>()
    }

    func adjacent(_ x: Int, _ y: Int) -> Bool {
        let vx = get_vertex(x) ?? Vertex()
        let vy = get_vertex(y) ?? Vertex()

        let max = vx.edgeList.size()
        if max > 0 {
            for i in 1...max {
                let e = vx.edgeList.get(i) ?? Edge()
                if e.destination == vy {
                    return true
                }
            }
        }

        return false
    }

    func neighbors(_ x: Int) -> List<Int> {
        let list = List<Int>()

        let vx = get_vertex(x) ?? Vertex()
        let max = vx.edgeList.size()
        if max > 0 {
            for i in 1...max {
                let e = vx.edgeList.get(i) ?? Edge()
                list.insert(e.destination.data)
            }
        }

        return list
    }

    func add_vertex(_ x: Int) {
        let vx = Vertex(x)
        vertexList.insert(vx)
    }

    func remove_vertex(_ x: Int) {
        let vx = Vertex(x)
        
        let max = vertexList.size()
        if max > 0 {
            for i in 1...max {
                let v = vertexList.get(i)
                if v == vx {
                    vertexList.delete(i)
                    break
                }
            }
        }

        if max > 0 {
            for i in 1...max {
                let v = vertexList.get(i) ?? Vertex()
                let max2 = v.edgeList.size()
                for j in 1...max2 {
                    let e = v.edgeList.get(j) ?? Edge()
                    if e.destination == vx {
                        v.edgeList.delete(j)
                        break
                    }
                }
            }
        }
    }

    func add_edge(_ x: Int, _ y: Int) {
        let vx = get_vertex(x) ?? Vertex()
        let vy = get_vertex(y) ?? Vertex()

        let e = Edge(0, vy)
        vx.edgeList.insert(e)
    }

    func remove_edge(_ x: Int, _ y: Int) {
        let vx = get_vertex(x) ?? Vertex()
        let vy = get_vertex(y) ?? Vertex()
        
        var max = vx.edgeList.size()
        if max > 0 {
            for i in 1...max {
                let e = vx.edgeList.get(i) ?? Edge()
                if e.destination == vy {
                    vx.edgeList.delete(i)
                    break
                }
            }
        }

        max = vy.edgeList.size()
        if max > 0 {
            for i in 1...max {
                let e = vy.edgeList.get(i) ?? Edge()
                if e.destination == vx {
                    vy.edgeList.delete(i)
                    break
                }
            }
        }
    }

    func get_vertex_value(_ x: Int) -> Int {
        let vx = get_vertex(x) ?? Vertex()
        return vx.data
    }

    func set_vertex_value(_ x: Int, _ v: Int) {
        let vx = get_vertex(x)  ?? Vertex()
        vx.data = v
    }

    func get_edge_value(_ x: Int, _ y: Int) -> Int {
        let vx = get_vertex(x) ?? Vertex()
        let vy = get_vertex(y) ?? Vertex()

        let max = vx.edgeList.size()
        if max > 0 {
            for i in 1...max {
                let e = vx.edgeList.get(i) ?? Edge()
                if e.destination == vy {
                    return e.data
                }
            }
        }

        return 0
    }

    func set_edge_value(_ x: Int, _ y: Int, _ v: Int) {
        let vx = get_vertex(x) ?? Vertex()
        let vy = get_vertex(y) ?? Vertex()

        let max = vx.edgeList.size()
        if max > 0 {
            for i in 1...max {
                let e = vx.edgeList.get(i) ?? Edge()
                if e.destination == vy {
                    e.data = v
                    break
                }
            }
        }
    }

    func get_vertex(_ x: Int) -> Vertex? {
        let max = vertexList.size()
        for i in 1...max {
            let v = vertexList.get(i) ?? Vertex()
            if v.data == x {
                return v
            }
        }
        return nil
    }

    func get_edge(_ x: Int, _ y: Int) -> Edge? {
        let max = vertexList.size()
        for i in 1...max {
            let v = vertexList.get(i) ?? Vertex()
            let max2 = v.edgeList.size()
            for j in 1...max2 {
                let e = v.edgeList.get(j) ?? Edge()
                if e.destination.data == y {
                    return e
                }
            }
        }
        return nil
    }

    func search(_ x: Int, _ y: Int) -> List<Edge> {
        let vx = get_vertex(x) ?? Vertex()
        let vy = get_vertex(y) ?? Vertex()
        
        let list = List<Edge>()
        return list
    }
}

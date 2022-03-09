class Edge {
    var data: Int
    var destination: Vertex

    required init() {
        self.data = 0
        self.destination = Vertex()
    }

    init(_ value: Int) {
        self.data = value
        self.destination = Vertex()
    }

    init(_ value: Int, _ destination: Vertex) {
        self.data = value
        self.destination = Vertex(destination)
    }

    func print() {
        Swift.print("\(data)", terminator: "")
    }

    static func ==(a: Edge, b: Edge) -> Bool {
        return a.destination == b.destination
    }
}

extension Edge: Initializable {}

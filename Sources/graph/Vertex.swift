class Vertex: Initializable {
    var data: Int
    var edgeList: List<Edge>

    required init() {
        self.data = 0
        self.edgeList = List<Edge>()
    }

    init(_ value: Int) {
        self.data = value
        self.edgeList = List<Edge>()
    }

    init(_ value: Vertex) {
        self.data = value.data
        self.edgeList = value.edgeList
    }

    func print() {
        Swift.print("\(data)", terminator: "")
    }

    static func ==(a: Vertex, b: Vertex) -> Bool {
        return a.data == b.data
    }
}

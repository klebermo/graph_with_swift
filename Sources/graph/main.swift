let graph = Graph()

graph.add_vertex(1)
graph.add_vertex(2)
graph.add_vertex(3)
graph.add_vertex(4)
graph.add_vertex(5)
graph.add_vertex(6)

graph.add_edge(1, 2)
graph.add_edge(1, 5)

graph.add_edge(2, 1)
graph.add_edge(2, 3)
graph.add_edge(2, 5)

graph.add_edge(3, 2)
graph.add_edge(3, 4)

graph.add_edge(4, 3)
graph.add_edge(4, 5)
graph.add_edge(4, 6)

graph.add_edge(5, 1)
graph.add_edge(5, 2)
graph.add_edge(5, 4)

graph.add_edge(6, 4)

graph.set_edge_value(1, 2, 15)
graph.set_edge_value(1, 5, 22)

graph.set_edge_value(2, 1, 32)
graph.set_edge_value(2, 3, 14)
graph.set_edge_value(2, 5, 28)

graph.set_edge_value(3, 2, 11)
graph.set_edge_value(3, 4, 21)

graph.set_edge_value(4, 3, 55)
graph.set_edge_value(4, 5, 42)
graph.set_edge_value(4, 3, 43)

graph.set_edge_value(5, 1, 33)
graph.set_edge_value(5, 2, 24)
graph.set_edge_value(5, 4, 38)

graph.set_edge_value(6, 4, 107)

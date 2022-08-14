import std.stdio;

import d_tree_sitter;
import libc : TSLanguage;

extern(C) TSLanguage* tree_sitter_python();

void main() {
	auto lang = Language(tree_sitter_python());	
	Parser parser = Parser(lang);

	auto tree = parser.parse("2 + 3");
	auto f = File("two_plus_tree.dot", "w");
	auto dTree = Tree(tree);
	dTree.print_dot_graph(f);
}

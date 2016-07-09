delegate G DoSomething<G>(G g);

void do_something<G> (DoSomething<G> f) {}

enum TEP {
	T;
	public void f() {
		do_something<TEP> ((x) => {
			switch (this) {
			case T:
				return T;
			default:
				assert_not_reached ();
			}
        });
	}
	public void g(int i) {
		do_something<TEP> ((x) => {
			switch (this) {
			case T:
				i++;
				return T;
			default:
				assert_not_reached ();
			}
		});
	}
}

class Test {
	public void f() {
		do_something<TEP> (g);
		do_something<int> (h);
	}
	[CCode (instance_pos = -1)]
	private TEP g(TEP i) {
		return i;
	}
	[CCode (instance_pos = -1)]
	private int h(int i) {
		return i;
	}
}

int main() {
	TEP t = TEP.T;
	t.f ();
	t.g (0);
	Test t2 = new Test ();
	t2.f ();
	return 0;
}

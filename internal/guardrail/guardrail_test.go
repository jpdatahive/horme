package guardrail

import "testing"

func TestPlaceholder(t *testing.T) {
	if 1+1 != 2 {
		t.Errorf("matemática básica quebrou, algo está muito errado")
	}
}

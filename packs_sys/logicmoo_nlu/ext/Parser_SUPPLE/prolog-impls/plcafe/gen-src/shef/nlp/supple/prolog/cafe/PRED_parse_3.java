package shef.nlp.supple.prolog.cafe;
import jp.ac.kobe_u.cs.prolog.lang.*;
import jp.ac.kobe_u.cs.prolog.builtin.*;

/*
 * *** Please do not edit ! ***
 * @(#) PRED_parse_3.java
 * @procedure parse/3 in semantics.pl
 */

/*
 * @version Prolog Cafe 0.8 November 2003
 * @author Mutsunori Banbara (banbara@kobe-u.ac.jp)
 * @author Naoyuki Tamura    (tamura@kobe-u.ac.jp)
 */

public class PRED_parse_3 extends Predicate {
    static SymbolTerm f1 = SymbolTerm.makeSymbol("setDynamicHash", 1);
    static SymbolTerm f3 = SymbolTerm.makeSymbol("setCurrentOutput", 1);

    public Term arg1, arg2, arg3;

    public PRED_parse_3(Term a1, Term a2, Term a3, Predicate cont) {
        arg1 = a1; 
        arg2 = a2; 
        arg3 = a3; 
        this.cont = cont;
    }

    public PRED_parse_3(){}
    public void setArgument(Term[] args, Predicate cont) {
        arg1 = args[0]; 
        arg2 = args[1]; 
        arg3 = args[2]; 
        this.cont = cont;
    }

    public Predicate exec(Prolog engine) {
        engine.setB0();
        Term a1, a2, a3, a4, a5, a6;
        Predicate p1, p2, p3;
        a1 = arg1.dereference();
        a2 = arg2.dereference();
        a3 = arg3.dereference();

        a4 = new VariableTerm(engine);
        Term[] h2 = {a2};
        a5 = new StructureTerm(f1, h2);
        Term[] h4 = {a1};
        a6 = new StructureTerm(f3, h4);
        p1 = new PRED_parse_1(a3, cont);
        p2 = new PRED_java_method_3(a4, a6, new VariableTerm(engine), p1);
        p3 = new PRED_java_method_3(a4, a5, new VariableTerm(engine), p2);
        return new PRED_current_engine_1(a4, p3);
    }

    public int arity() { return 3; }

    public String toString() {
        return "parse(" + arg1 + ", " + arg2 + ", " + arg3 + ")";
    }
}


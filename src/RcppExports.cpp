// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// clog1pexp
Rcpp::NumericVector clog1pexp(Rcpp::NumericVector x, double c0, double c1, double c2);
RcppExport SEXP _zinbwave_clog1pexp(SEXP xSEXP, SEXP c0SEXP, SEXP c1SEXP, SEXP c2SEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type x(xSEXP);
    Rcpp::traits::input_parameter< double >::type c0(c0SEXP);
    Rcpp::traits::input_parameter< double >::type c1(c1SEXP);
    Rcpp::traits::input_parameter< double >::type c2(c2SEXP);
    rcpp_result_gen = Rcpp::wrap(clog1pexp(x, c0, c1, c2));
    return rcpp_result_gen;
END_RCPP
}

static const R_CallMethodDef CallEntries[] = {
    {"_zinbwave_clog1pexp", (DL_FUNC) &_zinbwave_clog1pexp, 4},
    {NULL, NULL, 0}
};

RcppExport void R_init_zinbwave(DllInfo *dll) {
    R_registerRoutines(dll, NULL, CallEntries, NULL, NULL);
    R_useDynamicSymbols(dll, FALSE);
}

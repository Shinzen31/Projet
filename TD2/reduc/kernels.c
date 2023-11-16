//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include <cblas.h>
#endif

//
#include "types.h"

// Baseline - naive implementation
f64 reduc_base(f64* restrict a, u64 n) {
    double d = 0.0;

    for (u64 i = 0; i < n; i++)
        d += a[i];

    return d;
}

// Unrolled loop by 4
f64 reduc_unrolled4(f64* restrict a, u64 n) {
    double d = 0.0;
    u64 i = 0;

    for (; i < n - 3; i += 4) {
        d += a[i] + a[i + 1] + a[i + 2] + a[i + 3];
    }

    for (; i < n; i++) {
        d += a[i];
    }

    return d;
}

// Unrolled loop by 8
f64 reduc_unrolled8(f64* restrict a, u64 n) {
    double d = 0.0;
    u64 i = 0;

    for (; i < n - 7; i += 8) {
        d += a[i] + a[i + 1] + a[i + 2] + a[i + 3] + a[i + 4] + a[i + 5] + a[i + 6] + a[i + 7];
    }

    for (; i < n; i++) {
        d += a[i];
    }

    return d;
}

// Using CBLAS from BLAS
f64 reduc_cblas(f64* restrict a, u64 n) {
    double d = cblas_dasum(n, a, 1);
    return d;
}

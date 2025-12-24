.class public Lb/t/a;
.super Lb/t/o;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lb/t/o;-><init>()V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lb/t/o;->K(I)Lb/t/o;

    new-instance v1, Lb/t/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lb/t/c;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/t/o;->I(Lb/t/i;)Lb/t/o;

    new-instance v1, Lb/t/b;

    invoke-direct {v1}, Lb/t/b;-><init>()V

    invoke-virtual {p0, v1}, Lb/t/o;->I(Lb/t/i;)Lb/t/o;

    new-instance v1, Lb/t/c;

    invoke-direct {v1, v0}, Lb/t/c;-><init>(I)V

    invoke-virtual {p0, v1}, Lb/t/o;->I(Lb/t/i;)Lb/t/o;

    return-void
.end method

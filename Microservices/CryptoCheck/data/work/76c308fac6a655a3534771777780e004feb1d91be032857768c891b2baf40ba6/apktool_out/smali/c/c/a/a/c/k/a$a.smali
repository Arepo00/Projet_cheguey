.class public Lc/c/a/a/c/k/a$a;
.super Lc/c/a/a/c/k/a$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc/c/a/a/c/k/a$f;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/a/c/k/a$e<",
        "TT;TO;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lc/c/a/a/c/k/a$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/l/c;Ljava/lang/Object;Lc/c/a/a/c/k/d;Lc/c/a/a/c/k/e;)Lc/c/a/a/c/k/a$f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lc/c/a/a/c/l/c;",
            "TO;",
            "Lc/c/a/a/c/k/d;",
            "Lc/c/a/a/c/k/e;",
            ")TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual/range {p0 .. p6}, Lc/c/a/a/c/k/a$a;->b(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/l/c;Ljava/lang/Object;Lc/c/a/a/c/k/k/c;Lc/c/a/a/c/k/k/h;)Lc/c/a/a/c/k/a$f;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/l/c;Ljava/lang/Object;Lc/c/a/a/c/k/k/c;Lc/c/a/a/c/k/k/h;)Lc/c/a/a/c/k/a$f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lc/c/a/a/c/l/c;",
            "TO;",
            "Lc/c/a/a/c/k/k/c;",
            "Lc/c/a/a/c/k/k/h;",
            ")TT;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "buildClient must be implemented"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

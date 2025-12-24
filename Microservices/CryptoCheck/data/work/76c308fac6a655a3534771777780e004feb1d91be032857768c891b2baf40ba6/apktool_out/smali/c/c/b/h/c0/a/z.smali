.class public final synthetic Lc/c/b/h/c0/a/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/k/i;


# instance fields
.field public final a:Lc/c/b/h/c0/a/y;


# direct methods
.method public constructor <init>(Lc/c/b/h/c0/a/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/h/c0/a/z;->a:Lc/c/b/h/c0/a/y;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lc/c/b/h/c0/a/z;->a:Lc/c/b/h/c0/a/y;

    check-cast p1, Lc/c/b/h/c0/a/l0;

    check-cast p2, Lc/c/a/a/h/e;

    .line 1
    new-instance v1, Lc/c/b/h/c0/a/b1;

    invoke-direct {v1, v0, p2}, Lc/c/b/h/c0/a/b1;-><init>(Lc/c/b/h/c0/a/u0;Lc/c/a/a/h/e;)V

    iput-object v1, v0, Lc/c/b/h/c0/a/u0;->g:Lc/c/b/h/c0/a/b1;

    iget-boolean p2, v0, Lc/c/b/h/c0/a/u0;->t:Z

    invoke-interface {p1}, Lc/c/b/h/c0/a/l0;->a()Lc/c/b/h/c0/a/p0;

    move-result-object p1

    if-eqz p2, :cond_0

    iget-object p2, v0, Lc/c/b/h/c0/a/y;->w:Lc/c/a/a/f/c/q0;

    .line 2
    iget-object p2, p2, Lc/c/a/a/f/c/q0;->b:Lc/c/b/h/w;

    .line 3
    iget-object v0, v0, Lc/c/b/h/c0/a/u0;->b:Lc/c/b/h/c0/a/w0;

    invoke-interface {p1, p2, v0}, Lc/c/b/h/c0/a/p0;->l(Lc/c/b/h/w;Lc/c/b/h/c0/a/n0;)V

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lc/c/b/h/c0/a/y;->w:Lc/c/a/a/f/c/q0;

    iget-object v0, v0, Lc/c/b/h/c0/a/u0;->b:Lc/c/b/h/c0/a/w0;

    invoke-interface {p1, p2, v0}, Lc/c/b/h/c0/a/p0;->r(Lc/c/a/a/f/c/q0;Lc/c/b/h/c0/a/n0;)V

    :goto_0
    return-void
.end method

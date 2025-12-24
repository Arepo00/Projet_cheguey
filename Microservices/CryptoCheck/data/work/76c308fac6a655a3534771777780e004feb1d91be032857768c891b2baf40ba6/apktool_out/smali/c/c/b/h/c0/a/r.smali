.class public final synthetic Lc/c/b/h/c0/a/r;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/k/i;


# instance fields
.field public final a:Lc/c/b/h/c0/a/p;


# direct methods
.method public constructor <init>(Lc/c/b/h/c0/a/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/h/c0/a/r;->a:Lc/c/b/h/c0/a/p;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lc/c/b/h/c0/a/r;->a:Lc/c/b/h/c0/a/p;

    check-cast p1, Lc/c/b/h/c0/a/l0;

    check-cast p2, Lc/c/a/a/h/e;

    .line 1
    new-instance v1, Lc/c/b/h/c0/a/b1;

    invoke-direct {v1, v0, p2}, Lc/c/b/h/c0/a/b1;-><init>(Lc/c/b/h/c0/a/u0;Lc/c/a/a/h/e;)V

    iput-object v1, v0, Lc/c/b/h/c0/a/u0;->g:Lc/c/b/h/c0/a/b1;

    new-instance p2, Lc/c/a/a/f/c/o0;

    iget-object v1, v0, Lc/c/b/h/c0/a/p;->w:Lc/c/b/h/c;

    iget-object v2, v0, Lc/c/b/h/c0/a/u0;->d:Lc/c/b/h/o;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v2}, Lc/c/b/h/o;->m()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc/c/b/h/c;->e:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lc/c/b/h/c;->f:Z

    .line 3
    invoke-direct {p2, v1}, Lc/c/a/a/f/c/o0;-><init>(Lc/c/b/h/c;)V

    iget-boolean v1, v0, Lc/c/b/h/c0/a/u0;->t:Z

    invoke-interface {p1}, Lc/c/b/h/c0/a/l0;->a()Lc/c/b/h/c0/a/p0;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 4
    iget-object p2, p2, Lc/c/a/a/f/c/o0;->b:Lc/c/b/h/c;

    .line 5
    iget-object v0, v0, Lc/c/b/h/c0/a/u0;->b:Lc/c/b/h/c0/a/w0;

    invoke-interface {p1, p2, v0}, Lc/c/b/h/c0/a/p0;->p(Lc/c/b/h/c;Lc/c/b/h/c0/a/n0;)V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lc/c/b/h/c0/a/u0;->b:Lc/c/b/h/c0/a/w0;

    invoke-interface {p1, p2, v0}, Lc/c/b/h/c0/a/p0;->u(Lc/c/a/a/f/c/o0;Lc/c/b/h/c0/a/n0;)V

    :goto_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

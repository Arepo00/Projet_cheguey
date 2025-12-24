.class public final synthetic Lc/c/b/h/c0/a/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/k/i;


# instance fields
.field public final a:Lc/c/b/h/c0/a/j;


# direct methods
.method public constructor <init>(Lc/c/b/h/c0/a/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/h/c0/a/m;->a:Lc/c/b/h/c0/a/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lc/c/b/h/c0/a/m;->a:Lc/c/b/h/c0/a/j;

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

    iget-object p2, v0, Lc/c/b/h/c0/a/j;->w:Lc/c/b/h/c;

    .line 2
    iget-object v1, p2, Lc/c/b/h/c;->b:Ljava/lang/String;

    .line 3
    iget-object p2, p2, Lc/c/b/h/c;->c:Ljava/lang/String;

    .line 4
    iget-object v2, v0, Lc/c/b/h/c0/a/u0;->d:Lc/c/b/h/o;

    invoke-virtual {v2}, Lc/c/b/h/o;->m()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lc/c/b/h/c0/a/u0;->b:Lc/c/b/h/c0/a/w0;

    invoke-interface {p1, v1, p2, v2, v0}, Lc/c/b/h/c0/a/p0;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lc/c/b/h/c0/a/n0;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lc/c/a/a/f/c/d0;

    iget-object v1, v0, Lc/c/b/h/c0/a/j;->w:Lc/c/b/h/c;

    .line 5
    iget-object v2, v1, Lc/c/b/h/c;->b:Ljava/lang/String;

    .line 6
    iget-object v1, v1, Lc/c/b/h/c;->c:Ljava/lang/String;

    .line 7
    iget-object v3, v0, Lc/c/b/h/c0/a/u0;->d:Lc/c/b/h/o;

    invoke-virtual {v3}, Lc/c/b/h/o;->m()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v2, v1, v3}, Lc/c/a/a/f/c/d0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lc/c/b/h/c0/a/u0;->b:Lc/c/b/h/c0/a/w0;

    invoke-interface {p1, p2, v0}, Lc/c/b/h/c0/a/p0;->B(Lc/c/a/a/f/c/d0;Lc/c/b/h/c0/a/n0;)V

    :goto_0
    return-void
.end method

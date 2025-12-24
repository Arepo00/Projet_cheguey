.class public final Lc/c/b/h/c0/a/i;
.super Lc/c/b/h/c0/a/u0;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/b/h/c0/a/u0<",
        "Lc/c/b/h/p;",
        "Lc/c/b/h/d0/r;",
        ">;"
    }
.end annotation


# instance fields
.field public final w:Lc/c/a/a/f/c/b0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lc/c/b/h/c0/a/u0;-><init>(I)V

    const-string v0, "refresh token cannot be null"

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Lc/c/a/a/f/c/b0;

    invoke-direct {v0, p1}, Lc/c/a/a/f/c/b0;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lc/c/b/h/c0/a/i;->w:Lc/c/a/a/f/c/b0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "getAccessToken"

    return-object v0
.end method

.method public final b()Lc/c/a/a/c/k/k/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/a/c/k/k/k<",
            "Lc/c/b/h/c0/a/l0;",
            "Lc/c/b/h/p;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lc/c/a/a/c/k/k/k;->a()Lc/c/a/a/c/k/k/k$a;

    move-result-object v0

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lc/c/a/a/c/k/k/k$a;->b:Z

    .line 2
    iget-boolean v2, p0, Lc/c/b/h/c0/a/u0;->t:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lc/c/b/h/c0/a/u0;->u:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Lc/c/a/a/c/c;

    sget-object v3, Lc/c/a/a/f/c/r0;->b:Lc/c/a/a/c/c;

    aput-object v3, v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 3
    :goto_1
    iput-object v2, v0, Lc/c/a/a/c/k/k/k$a;->c:[Lc/c/a/a/c/c;

    .line 4
    new-instance v1, Lc/c/b/h/c0/a/k;

    invoke-direct {v1, p0}, Lc/c/b/h/c0/a/k;-><init>(Lc/c/b/h/c0/a/i;)V

    .line 5
    iput-object v1, v0, Lc/c/a/a/c/k/k/k$a;->a:Lc/c/a/a/c/k/k/i;

    .line 6
    invoke-virtual {v0}, Lc/c/a/a/c/k/k/k$a;->a()Lc/c/a/a/c/k/k/k;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lc/c/b/h/c0/a/u0;->j:Lc/c/a/a/f/c/a1;

    .line 1
    iget-object v0, v0, Lc/c/a/a/f/c/a1;->b:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/c/b/h/c0/a/u0;->j:Lc/c/a/a/f/c/a1;

    iget-object v2, p0, Lc/c/b/h/c0/a/i;->w:Lc/c/a/a/f/c/b0;

    .line 3
    iget-object v2, v2, Lc/c/a/a/f/c/b0;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v2}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object v2, v0, Lc/c/a/a/f/c/a1;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    throw v1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/c/b/h/c0/a/u0;->e:Ljava/lang/Object;

    check-cast v0, Lc/c/b/h/d0/r;

    iget-object v2, p0, Lc/c/b/h/c0/a/u0;->j:Lc/c/a/a/f/c/a1;

    iget-object v3, p0, Lc/c/b/h/c0/a/u0;->d:Lc/c/b/h/o;

    invoke-interface {v0, v2, v3}, Lc/c/b/h/d0/r;->a(Lc/c/a/a/f/c/a1;Lc/c/b/h/o;)V

    iget-object v0, p0, Lc/c/b/h/c0/a/u0;->j:Lc/c/a/a/f/c/a1;

    .line 6
    iget-object v0, v0, Lc/c/a/a/f/c/a1;->c:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lc/c/b/h/d0/i;->a(Ljava/lang/String;)Lc/c/b/h/p;

    move-result-object v0

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lc/c/b/h/c0/a/u0;->v:Z

    iget-object v2, p0, Lc/c/b/h/c0/a/u0;->g:Lc/c/b/h/c0/a/b1;

    invoke-virtual {v2, v0, v1}, Lc/c/b/h/c0/a/b1;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

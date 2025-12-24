.class public final Lc/c/b/h/c0/a/w0;
.super Lc/c/b/h/c0/a/o0;
.source ""


# instance fields
.field public final synthetic a:Lc/c/b/h/c0/a/u0;


# direct methods
.method public constructor <init>(Lc/c/b/h/c0/a/u0;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    invoke-direct {p0}, Lc/c/b/h/c0/a/o0;-><init>()V

    return-void
.end method


# virtual methods
.method public final t(Lcom/google/android/gms/common/api/Status;Lc/c/b/h/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    .line 1
    iget-object v0, v0, Lc/c/b/h/c0/a/u0;->f:Lc/c/b/h/d0/f;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lc/c/b/h/d0/f;->b(Lcom/google/android/gms/common/api/Status;)V

    .line 2
    :cond_0
    iget-object v0, p0, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    iput-object p2, v0, Lc/c/b/h/c0/a/u0;->p:Lc/c/b/h/b;

    iput-object p3, v0, Lc/c/b/h/c0/a/u0;->q:Ljava/lang/String;

    iput-object p4, v0, Lc/c/b/h/c0/a/u0;->r:Ljava/lang/String;

    iget-object p2, v0, Lc/c/b/h/c0/a/u0;->f:Lc/c/b/h/d0/f;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Lc/c/b/h/d0/f;->b(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    iget-object p2, p0, Lc/c/b/h/c0/a/w0;->a:Lc/c/b/h/c0/a/u0;

    const/4 p3, 0x1

    .line 3
    iput-boolean p3, p2, Lc/c/b/h/c0/a/u0;->v:Z

    iget-object p2, p2, Lc/c/b/h/c0/a/u0;->g:Lc/c/b/h/c0/a/b1;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lc/c/b/h/c0/a/b1;->a(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

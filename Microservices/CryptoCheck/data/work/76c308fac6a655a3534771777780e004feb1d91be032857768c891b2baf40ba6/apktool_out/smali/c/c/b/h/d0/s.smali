.class public final Lc/c/b/h/d0/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/k/b$a;


# instance fields
.field public final synthetic a:Lc/c/b/h/d0/o;


# direct methods
.method public constructor <init>(Lc/c/b/h/d0/o;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/h/d0/s;->a:Lc/c/b/h/d0/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/c/b/h/d0/s;->a:Lc/c/b/h/d0/o;

    .line 1
    iput-boolean v0, p1, Lc/c/b/h/d0/o;->c:Z

    .line 2
    iget-object p1, p0, Lc/c/b/h/d0/s;->a:Lc/c/b/h/d0/o;

    .line 3
    iget-object p1, p1, Lc/c/b/h/d0/o;->b:Lc/c/b/h/d0/c;

    .line 4
    iget-object v0, p1, Lc/c/b/h/d0/c;->f:Landroid/os/Handler;

    iget-object p1, p1, Lc/c/b/h/d0/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lc/c/b/h/d0/s;->a:Lc/c/b/h/d0/o;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p1, Lc/c/b/h/d0/o;->c:Z

    .line 7
    iget-object p1, p0, Lc/c/b/h/d0/s;->a:Lc/c/b/h/d0/o;

    .line 8
    iget v2, p1, Lc/c/b/h/d0/o;->a:I

    if-lez v2, :cond_1

    iget-boolean p1, p1, Lc/c/b/h/d0/o;->c:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    iget-object p1, p0, Lc/c/b/h/d0/s;->a:Lc/c/b/h/d0/o;

    .line 10
    iget-object p1, p1, Lc/c/b/h/d0/o;->b:Lc/c/b/h/d0/c;

    .line 11
    invoke-virtual {p1}, Lc/c/b/h/d0/c;->a()V

    :cond_2
    return-void
.end method

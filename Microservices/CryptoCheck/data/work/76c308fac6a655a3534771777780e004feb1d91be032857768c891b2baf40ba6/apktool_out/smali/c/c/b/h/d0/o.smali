.class public final Lc/c/b/h/d0/o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public volatile a:I

.field public final b:Lc/c/b/h/d0/c;

.field public volatile c:Z


# direct methods
.method public constructor <init>(Lc/c/b/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lc/c/b/b;->a()V

    iget-object v0, p1, Lc/c/b/b;->a:Landroid/content/Context;

    .line 2
    new-instance v1, Lc/c/b/h/d0/c;

    invoke-direct {v1, p1}, Lc/c/b/h/d0/c;-><init>(Lc/c/b/b;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/c/b/h/d0/o;->c:Z

    iput p1, p0, Lc/c/b/h/d0/o;->a:I

    iput-object v1, p0, Lc/c/b/h/d0/o;->b:Lc/c/b/h/d0/c;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lc/c/a/a/c/k/k/b;->b(Landroid/app/Application;)V

    .line 4
    sget-object p1, Lc/c/a/a/c/k/k/b;->f:Lc/c/a/a/c/k/k/b;

    .line 5
    new-instance v0, Lc/c/b/h/d0/s;

    invoke-direct {v0, p0}, Lc/c/b/h/d0/s;-><init>(Lc/c/b/h/d0/o;)V

    invoke-virtual {p1, v0}, Lc/c/a/a/c/k/k/b;->a(Lc/c/a/a/c/k/k/b$a;)V

    return-void
.end method

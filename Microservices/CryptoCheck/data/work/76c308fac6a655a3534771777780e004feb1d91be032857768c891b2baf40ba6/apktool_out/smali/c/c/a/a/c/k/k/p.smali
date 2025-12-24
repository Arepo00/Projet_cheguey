.class public final Lc/c/a/a/c/k/k/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/k/b$a;


# instance fields
.field public final synthetic a:Lc/c/a/a/c/k/k/d;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/k/k/d;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/c/k/k/p;->a:Lc/c/a/a/c/k/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/k/k/p;->a:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

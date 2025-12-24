.class public final Lc/c/a/a/c/k/k/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/c/a/a/c/k/k/z;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/k/k/z;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/c/k/k/y;->b:Lc/c/a/a/c/k/k/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lc/c/a/a/c/k/k/y;->b:Lc/c/a/a/c/k/k/z;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/z;->g:Lc/c/a/a/c/k/k/a0;

    .line 2
    new-instance v1, Lc/c/a/a/c/a;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lc/c/a/a/c/a;-><init>(I)V

    check-cast v0, Lc/c/a/a/c/k/k/d$b;

    invoke-virtual {v0, v1}, Lc/c/a/a/c/k/k/d$b;->b(Lc/c/a/a/c/a;)V

    return-void
.end method

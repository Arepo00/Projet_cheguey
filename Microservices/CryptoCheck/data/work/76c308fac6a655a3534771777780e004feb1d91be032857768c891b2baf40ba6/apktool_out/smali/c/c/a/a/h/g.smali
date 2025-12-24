.class public final Lc/c/a/a/h/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/h/a;
.implements Lc/c/a/a/h/b;
.implements Lc/c/a/a/h/q;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/c/a/a/h/g;",
        "Lc/c/a/a/h/a;",
        "Lc/c/a/a/h/b<",
        "TTContinuationResult;>;",
        "Lc/c/a/a/h/q<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lc/c/b/h/c0/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/b/h/c0/a/h<",
            "TTResult;",
            "Lc/c/a/a/h/d<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field public final c:Lc/c/a/a/h/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/h/t<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lc/c/b/h/c0/a/h;Lc/c/a/a/h/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lc/c/b/h/c0/a/h<",
            "TTResult;",
            "Lc/c/a/a/h/d<",
            "TTContinuationResult;>;>;",
            "Lc/c/a/a/h/t<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/h/g;->a:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lc/c/a/a/h/g;->b:Lc/c/b/h/c0/a/h;

    iput-object p3, p0, Lc/c/a/a/h/g;->c:Lc/c/a/a/h/t;

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/a/h/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/h/d<",
            "TTResult;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/a/h/g;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/c/a/a/h/h;

    invoke-direct {v1, p0, p1}, Lc/c/a/a/h/h;-><init>(Lc/c/a/a/h/g;Lc/c/a/a/h/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final b(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/h/g;->c:Lc/c/a/a/h/t;

    invoke-virtual {v0, p1}, Lc/c/a/a/h/t;->c(Ljava/lang/Exception;)V

    return-void
.end method

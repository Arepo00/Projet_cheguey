.class public final Lc/c/a/a/h/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/c/a/a/h/d;

.field public final synthetic c:Lc/c/a/a/h/g;


# direct methods
.method public constructor <init>(Lc/c/a/a/h/g;Lc/c/a/a/h/d;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/h/h;->c:Lc/c/a/a/h/g;

    iput-object p2, p0, Lc/c/a/a/h/h;->b:Lc/c/a/a/h/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lc/c/a/a/h/h;->c:Lc/c/a/a/h/g;

    .line 1
    iget-object v0, v0, Lc/c/a/a/h/g;->b:Lc/c/b/h/c0/a/h;

    .line 2
    iget-object v1, p0, Lc/c/a/a/h/h;->b:Lc/c/a/a/h/d;

    invoke-virtual {v0, v1}, Lc/c/b/h/c0/a/h;->a(Lc/c/a/a/h/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/h/d;
    :try_end_0
    .catch Lc/c/a/a/h/c; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/h/h;->c:Lc/c/a/a/h/g;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v0, v0, Lc/c/a/a/h/g;->c:Lc/c/a/a/h/t;

    invoke-virtual {v0, v1}, Lc/c/a/a/h/t;->c(Ljava/lang/Exception;)V

    return-void

    .line 4
    :cond_0
    sget-object v1, Lc/c/a/a/h/f;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lc/c/a/a/h/h;->c:Lc/c/a/a/h/g;

    check-cast v0, Lc/c/a/a/h/t;

    .line 5
    iget-object v3, v0, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    new-instance v4, Lc/c/a/a/h/o;

    invoke-direct {v4, v1, v2}, Lc/c/a/a/h/o;-><init>(Ljava/util/concurrent/Executor;Lc/c/a/a/h/b;)V

    invoke-virtual {v3, v4}, Lc/c/a/a/h/r;->b(Lc/c/a/a/h/q;)V

    invoke-virtual {v0}, Lc/c/a/a/h/t;->e()V

    .line 6
    sget-object v1, Lc/c/a/a/h/f;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lc/c/a/a/h/h;->c:Lc/c/a/a/h/g;

    .line 7
    iget-object v3, v0, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    new-instance v4, Lc/c/a/a/h/m;

    invoke-direct {v4, v1, v2}, Lc/c/a/a/h/m;-><init>(Ljava/util/concurrent/Executor;Lc/c/a/a/h/a;)V

    invoke-virtual {v3, v4}, Lc/c/a/a/h/r;->b(Lc/c/a/a/h/q;)V

    invoke-virtual {v0}, Lc/c/a/a/h/t;->e()V

    .line 8
    sget-object v1, Lc/c/a/a/h/f;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lc/c/a/a/h/h;->c:Lc/c/a/a/h/g;

    .line 9
    iget-object v3, v0, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    new-instance v4, Lc/c/a/a/h/i;

    invoke-direct {v4, v1, v2}, Lc/c/a/a/h/i;-><init>(Ljava/util/concurrent/Executor;Lc/c/a/a/h/g;)V

    invoke-virtual {v3, v4}, Lc/c/a/a/h/r;->b(Lc/c/a/a/h/q;)V

    invoke-virtual {v0}, Lc/c/a/a/h/t;->e()V

    return-void

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lc/c/a/a/h/h;->c:Lc/c/a/a/h/g;

    .line 11
    iget-object v1, v1, Lc/c/a/a/h/g;->c:Lc/c/a/a/h/t;

    .line 12
    invoke-virtual {v1, v0}, Lc/c/a/a/h/t;->c(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/a/h/h;->c:Lc/c/a/a/h/g;

    .line 13
    iget-object v1, v1, Lc/c/a/a/h/g;->c:Lc/c/a/a/h/t;

    .line 14
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lc/c/a/a/h/t;->c(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Lc/c/a/a/h/h;->c:Lc/c/a/a/h/g;

    .line 15
    iget-object v1, v1, Lc/c/a/a/h/g;->c:Lc/c/a/a/h/t;

    .line 16
    invoke-virtual {v1, v0}, Lc/c/a/a/h/t;->c(Ljava/lang/Exception;)V

    return-void
.end method

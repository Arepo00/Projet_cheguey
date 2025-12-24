.class public final Lc/c/b/h/d0/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ljava/lang/String;

.field public final synthetic c:Lc/c/b/h/d0/c;


# direct methods
.method public constructor <init>(Lc/c/b/h/d0/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/h/d0/e;->c:Lc/c/b/h/d0/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lc/c/b/h/d0/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lc/c/b/h/d0/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lc/c/b/b;->d(Ljava/lang/String;)Lc/c/b/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance(Lc/c/b/b;)Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    move-object v4, v1

    check-cast v4, Lc/c/b/h/d0/c0;

    .line 3
    iget-object v4, v4, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    .line 4
    iget-object v5, v4, Lc/c/a/a/f/c/a1;->f:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, v4, Lc/c/a/a/f/c/a1;->d:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    add-long/2addr v7, v5

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v9, 0x493e0

    add-long/2addr v5, v9

    cmp-long v9, v5, v7

    .line 6
    iget-object v5, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    .line 7
    iget-object v4, v4, Lc/c/a/a/f/c/a1;->b:Ljava/lang/String;

    .line 8
    new-instance v7, Lc/c/b/h/l0;

    invoke-direct {v7, v0}, Lc/c/b/h/l0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v5, :cond_0

    .line 9
    new-instance v0, Lc/c/b/h/c0/a/i;

    invoke-direct {v0, v4}, Lc/c/b/h/c0/a/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v0, v1}, Lc/c/b/h/c0/a/u0;->d(Lc/c/b/h/o;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v0, v7}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v0, v7}, Lc/c/b/h/c0/a/u0;->e(Lc/c/b/h/d0/f;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v5, v0}, Lc/c/b/h/c0/a/a;->b(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    .line 10
    sget-object v1, Lc/c/b/h/d0/c;->h:Lc/c/a/a/c/m/a;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "Token refreshing started"

    .line 11
    invoke-virtual {v1, v3, v2}, Lc/c/a/a/c/m/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lc/c/b/h/d0/d;

    invoke-direct {v1, p0}, Lc/c/b/h/d0/d;-><init>(Lc/c/b/h/d0/e;)V

    check-cast v0, Lc/c/a/a/h/t;

    .line 12
    sget-object v2, Lc/c/a/a/h/f;->a:Ljava/util/concurrent/Executor;

    .line 13
    iget-object v3, v0, Lc/c/a/a/h/t;->b:Lc/c/a/a/h/r;

    new-instance v4, Lc/c/a/a/h/m;

    invoke-direct {v4, v2, v1}, Lc/c/a/a/h/m;-><init>(Ljava/util/concurrent/Executor;Lc/c/a/a/h/a;)V

    invoke-virtual {v3, v4}, Lc/c/a/a/h/r;->b(Lc/c/a/a/h/q;)V

    invoke-virtual {v0}, Lc/c/a/a/h/t;->e()V

    goto :goto_0

    .line 14
    :cond_0
    throw v2

    :cond_1
    :goto_0
    return-void
.end method

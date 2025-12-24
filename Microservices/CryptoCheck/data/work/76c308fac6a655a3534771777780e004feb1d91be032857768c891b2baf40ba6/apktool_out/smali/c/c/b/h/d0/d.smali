.class public final Lc/c/b/h/d0/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/h/a;


# instance fields
.field public final synthetic a:Lc/c/b/h/d0/e;


# direct methods
.method public constructor <init>(Lc/c/b/h/d0/e;)V
    .locals 0

    iput-object p1, p0, Lc/c/b/h/d0/d;->a:Lc/c/b/h/d0/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Exception;)V
    .locals 8

    instance-of p1, p1, Lc/c/b/e;

    if-eqz p1, :cond_2

    .line 1
    sget-object p1, Lc/c/b/h/d0/c;->h:Lc/c/a/a/c/m/a;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Failure to refresh token; scheduling refresh after failure"

    .line 2
    invoke-virtual {p1, v2, v1}, Lc/c/a/a/c/m/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lc/c/b/h/d0/d;->a:Lc/c/b/h/d0/e;

    iget-object p1, p1, Lc/c/b/h/d0/e;->c:Lc/c/b/h/d0/c;

    .line 3
    iget-wide v1, p1, Lc/c/b/h/d0/c;->c:J

    long-to-int v2, v1

    const/16 v1, 0x1e

    if-eq v2, v1, :cond_1

    const/16 v1, 0x3c

    if-eq v2, v1, :cond_1

    const/16 v1, 0x78

    if-eq v2, v1, :cond_1

    const/16 v1, 0xf0

    if-eq v2, v1, :cond_1

    const/16 v1, 0x1e0

    if-eq v2, v1, :cond_1

    const/16 v1, 0x3c0

    if-eq v2, v1, :cond_0

    const-wide/16 v1, 0x1e

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x3c0

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x2

    iget-wide v3, p1, Lc/c/b/h/d0/c;->c:J

    mul-long v1, v1, v3

    :goto_0
    iput-wide v1, p1, Lc/c/b/h/d0/c;->c:J

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    iget-wide v3, p1, Lc/c/b/h/d0/c;->c:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    add-long/2addr v3, v1

    iput-wide v3, p1, Lc/c/b/h/d0/c;->b:J

    sget-object v1, Lc/c/b/h/d0/c;->h:Lc/c/a/a/c/m/a;

    iget-wide v2, p1, Lc/c/b/h/d0/c;->b:J

    const/16 v4, 0x2b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scheduling refresh for "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lc/c/a/a/c/m/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Lc/c/b/h/d0/c;->f:Landroid/os/Handler;

    iget-object v1, p1, Lc/c/b/h/d0/c;->g:Ljava/lang/Runnable;

    iget-wide v2, p1, Lc/c/b/h/d0/c;->c:J

    mul-long v2, v2, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

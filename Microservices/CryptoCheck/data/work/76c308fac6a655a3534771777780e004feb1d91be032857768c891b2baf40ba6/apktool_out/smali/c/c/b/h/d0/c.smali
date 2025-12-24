.class public final Lc/c/b/h/d0/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static h:Lc/c/a/a/c/m/a;


# instance fields
.field public final a:Lc/c/b/b;

.field public volatile b:J

.field public volatile c:J

.field public d:J

.field public e:Landroid/os/HandlerThread;

.field public f:Landroid/os/Handler;

.field public g:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/c/a/a/c/m/a;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "TokenRefresher"

    invoke-direct {v0, v2, v1}, Lc/c/a/a/c/m/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lc/c/b/h/d0/c;->h:Lc/c/a/a/c/m/a;

    return-void
.end method

.method public constructor <init>(Lc/c/b/b;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lc/c/b/h/d0/c;->h:Lc/c/a/a/c/m/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Initializing TokenRefresher"

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/m/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/b/h/d0/c;->a:Lc/c/b/b;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "TokenRefresher"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lc/c/b/h/d0/c;->e:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lc/c/a/a/f/c/o1;

    iget-object v0, p0, Lc/c/b/h/d0/c;->e:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/c/a/a/f/c/o1;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lc/c/b/h/d0/c;->f:Landroid/os/Handler;

    new-instance p1, Lc/c/b/h/d0/e;

    iget-object v0, p0, Lc/c/b/h/d0/c;->a:Lc/c/b/b;

    .line 1
    invoke-virtual {v0}, Lc/c/b/b;->a()V

    iget-object v0, v0, Lc/c/b/b;->b:Ljava/lang/String;

    .line 2
    invoke-direct {p1, p0, v0}, Lc/c/b/h/d0/e;-><init>(Lc/c/b/h/d0/c;Ljava/lang/String;)V

    iput-object p1, p0, Lc/c/b/h/d0/c;->g:Ljava/lang/Runnable;

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lc/c/b/h/d0/c;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    sget-object v0, Lc/c/b/h/d0/c;->h:Lc/c/a/a/c/m/a;

    iget-wide v1, p0, Lc/c/b/h/d0/c;->b:J

    iget-wide v3, p0, Lc/c/b/h/d0/c;->d:J

    sub-long/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2b

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Scheduling refresh for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lc/c/a/a/c/m/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1
    iget-object v0, p0, Lc/c/b/h/d0/c;->f:Landroid/os/Handler;

    iget-object v1, p0, Lc/c/b/h/d0/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lc/c/b/h/d0/c;->b:J

    sub-long/2addr v2, v0

    iget-wide v0, p0, Lc/c/b/h/d0/c;->d:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc/c/b/h/d0/c;->c:J

    iget-object v0, p0, Lc/c/b/h/d0/c;->f:Landroid/os/Handler;

    iget-object v1, p0, Lc/c/b/h/d0/c;->g:Ljava/lang/Runnable;

    iget-wide v4, p0, Lc/c/b/h/d0/c;->c:J

    mul-long v4, v4, v2

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

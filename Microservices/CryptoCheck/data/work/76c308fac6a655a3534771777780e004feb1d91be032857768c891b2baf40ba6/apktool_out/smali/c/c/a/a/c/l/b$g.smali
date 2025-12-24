.class public final Lc/c/a/a/c/l/b$g;
.super Lc/c/a/a/f/b/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/a/c/l/b;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/l/b;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    invoke-direct {p0, p2}, Lc/c/a/a/f/b/d;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static a(Landroid/os/Message;)V
    .locals 1

    iget-object p0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lc/c/a/a/c/l/b$h;

    move-object v0, p0

    check-cast v0, Lc/c/a/a/c/l/b$f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/c/l/b$h;->a()V

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 1
    throw p0
.end method

.method public static b(Landroid/os/Message;)Z
    .locals 2

    iget p0, p0, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x7

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    iget-object v0, v0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v0, v1, :cond_1

    invoke-static {p1}, Lc/c/a/a/c/l/b$g;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lc/c/a/a/c/l/b$g;->a(Landroid/os/Message;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-eq v0, v2, :cond_4

    const/4 v5, 0x7

    if-eq v0, v5, :cond_4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1
    :cond_2
    throw v4

    :cond_3
    if-ne v0, v3, :cond_5

    .line 2
    :cond_4
    :goto_0
    iget-object v0, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    invoke-virtual {v0}, Lc/c/a/a/c/l/b;->d()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lc/c/a/a/c/l/b$g;->a(Landroid/os/Message;)V

    return-void

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x8

    const/4 v6, 0x3

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    new-instance v1, Lc/c/a/a/c/a;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1}, Lc/c/a/a/c/a;-><init>(I)V

    .line 3
    iput-object v1, v0, Lc/c/a/a/c/l/b;->q:Lc/c/a/a/c/a;

    .line 4
    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    invoke-static {p1}, Lc/c/a/a/c/l/b;->A(Lc/c/a/a/c/l/b;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    .line 5
    iget-boolean v0, p1, Lc/c/a/a/c/l/b;->r:Z

    if-nez v0, :cond_6

    .line 6
    invoke-virtual {p1, v6, v4}, Lc/c/a/a/c/l/b;->x(ILandroid/os/IInterface;)V

    return-void

    .line 7
    :cond_6
    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    .line 8
    iget-object p1, p1, Lc/c/a/a/c/l/b;->q:Lc/c/a/a/c/a;

    if-eqz p1, :cond_7

    goto :goto_1

    .line 9
    :cond_7
    new-instance p1, Lc/c/a/a/c/a;

    invoke-direct {p1, v5}, Lc/c/a/a/c/a;-><init>(I)V

    :goto_1
    iget-object v0, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    iget-object v0, v0, Lc/c/a/a/c/l/b;->h:Lc/c/a/a/c/l/b$c;

    invoke-interface {v0, p1}, Lc/c/a/a/c/l/b$c;->a(Lc/c/a/a/c/a;)V

    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    if-eqz p1, :cond_8

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    .line 11
    :cond_8
    throw v4

    :cond_9
    if-ne v0, v3, :cond_c

    .line 12
    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    .line 13
    iget-object p1, p1, Lc/c/a/a/c/l/b;->q:Lc/c/a/a/c/a;

    if-eqz p1, :cond_a

    goto :goto_2

    .line 14
    :cond_a
    new-instance p1, Lc/c/a/a/c/a;

    invoke-direct {p1, v5}, Lc/c/a/a/c/a;-><init>(I)V

    :goto_2
    iget-object v0, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    iget-object v0, v0, Lc/c/a/a/c/l/b;->h:Lc/c/a/a/c/l/b$c;

    invoke-interface {v0, p1}, Lc/c/a/a/c/l/b$c;->a(Lc/c/a/a/c/a;)V

    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    if-eqz p1, :cond_b

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    .line 16
    :cond_b
    throw v4

    :cond_c
    if-ne v0, v6, :cond_f

    .line 17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/app/PendingIntent;

    goto :goto_3

    :cond_d
    move-object v0, v4

    :goto_3
    new-instance v1, Lc/c/a/a/c/a;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {v1, p1, v0}, Lc/c/a/a/c/a;-><init>(ILandroid/app/PendingIntent;)V

    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    iget-object p1, p1, Lc/c/a/a/c/l/b;->h:Lc/c/a/a/c/l/b$c;

    invoke-interface {p1, v1}, Lc/c/a/a/c/l/b$c;->a(Lc/c/a/a/c/a;)V

    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    if-eqz p1, :cond_e

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    .line 19
    :cond_e
    throw v4

    :cond_f
    const/4 v1, 0x6

    if-ne v0, v1, :cond_12

    .line 20
    iget-object v0, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    .line 21
    invoke-virtual {v0, v3, v4}, Lc/c/a/a/c/l/b;->x(ILandroid/os/IInterface;)V

    .line 22
    iget-object v0, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    .line 23
    iget-object v0, v0, Lc/c/a/a/c/l/b;->m:Lc/c/a/a/c/l/b$a;

    if-eqz v0, :cond_10

    .line 24
    iget p1, p1, Landroid/os/Message;->arg2:I

    check-cast v0, Lc/c/a/a/c/l/w;

    .line 25
    iget-object v0, v0, Lc/c/a/a/c/l/w;->a:Lc/c/a/a/c/k/k/c;

    invoke-interface {v0, p1}, Lc/c/a/a/c/k/k/c;->c(I)V

    .line 26
    :cond_10
    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    if-eqz p1, :cond_11

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    iget-object p1, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    invoke-static {p1, v3, v2, v4}, Lc/c/a/a/c/l/b;->z(Lc/c/a/a/c/l/b;IILandroid/os/IInterface;)Z

    return-void

    .line 29
    :cond_11
    throw v4

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 30
    iget-object v0, p0, Lc/c/a/a/c/l/b$g;->a:Lc/c/a/a/c/l/b;

    invoke-virtual {v0}, Lc/c/a/a/c/l/b;->f()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-static {p1}, Lc/c/a/a/c/l/b$g;->a(Landroid/os/Message;)V

    return-void

    :cond_13
    invoke-static {p1}, Lc/c/a/a/c/l/b$g;->b(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lc/c/a/a/c/l/b$h;

    .line 31
    monitor-enter v0

    :try_start_0
    iget-object p1, v0, Lc/c/a/a/c/l/b$h;->a:Ljava/lang/Object;

    iget-boolean v1, v0, Lc/c/a/a/c/l/b$h;->b:Z

    if-eqz v1, :cond_14

    const-string v1, "GmsClient"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Callback proxy "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " being reused. This is not safe."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_15

    :try_start_1
    invoke-virtual {v0, p1}, Lc/c/a/a/c/l/b$h;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    throw p1

    :cond_15
    :goto_4
    monitor-enter v0

    :try_start_2
    iput-boolean v2, v0, Lc/c/a/a/c/l/b$h;->b:Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lc/c/a/a/c/l/b$h;->a()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :cond_16
    const-string v0, "GmsClient"

    .line 32
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Don\'t know how to handle message: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

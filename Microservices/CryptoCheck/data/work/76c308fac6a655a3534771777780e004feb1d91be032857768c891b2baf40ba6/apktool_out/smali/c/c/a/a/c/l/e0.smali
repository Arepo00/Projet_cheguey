.class public final Lc/c/a/a/c/l/e0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Z

.field public d:Landroid/os/IBinder;

.field public final e:Lc/c/a/a/c/l/h$a;

.field public f:Landroid/content/ComponentName;

.field public final synthetic g:Lc/c/a/a/c/l/d0;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/l/d0;Lc/c/a/a/c/l/h$a;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc/c/a/a/c/l/e0;->e:Lc/c/a/a/c/l/h$a;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lc/c/a/a/c/l/e0;->a:Ljava/util/Set;

    const/4 p1, 0x2

    iput p1, p0, Lc/c/a/a/c/l/e0;->b:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    const/4 p1, 0x3

    iput p1, p0, Lc/c/a/a/c/l/e0;->b:I

    iget-object p1, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    .line 1
    iget-object v0, p1, Lc/c/a/a/c/l/d0;->f:Lc/c/a/a/c/n/a;

    .line 2
    iget-object p1, p1, Lc/c/a/a/c/l/d0;->d:Landroid/content/Context;

    .line 3
    iget-object v1, p0, Lc/c/a/a/c/l/e0;->e:Lc/c/a/a/c/l/h$a;

    invoke-virtual {v1}, Lc/c/a/a/c/l/h$a;->a()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/a/c/l/e0;->e:Lc/c/a/a/c/l/h$a;

    .line 4
    iget v2, v2, Lc/c/a/a/c/l/h$a;->d:I

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v6, "com.google.android.gms"

    .line 6
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {p1}, Lc/c/a/a/c/p/b;->a(Landroid/content/Context;)Lc/c/a/a/c/p/a;

    move-result-object v6

    .line 7
    iget-object v6, v6, Lc/c/a/a/c/p/a;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 8
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v6, 0x200000

    and-int/2addr v0, v6

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    const-string p1, "ConnectionTracker"

    const-string v0, "Attempted to bind to a service in a STOPPED package."

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    .line 10
    :goto_2
    iput-boolean v4, p0, Lc/c/a/a/c/l/e0;->c:Z

    if-eqz v4, :cond_3

    iget-object p1, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    .line 11
    iget-object p1, p1, Lc/c/a/a/c/l/d0;->e:Landroid/os/Handler;

    .line 12
    iget-object v0, p0, Lc/c/a/a/c/l/e0;->e:Lc/c/a/a/c/l/h$a;

    invoke-virtual {p1, v5, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    .line 13
    iget-object v1, v0, Lc/c/a/a/c/l/d0;->e:Landroid/os/Handler;

    .line 14
    iget-wide v2, v0, Lc/c/a/a/c/l/d0;->h:J

    .line 15
    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_3
    const/4 p1, 0x2

    iput p1, p0, Lc/c/a/a/c/l/e0;->b:I

    :try_start_1
    iget-object p1, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    .line 16
    iget-object p1, p1, Lc/c/a/a/c/l/d0;->f:Lc/c/a/a/c/n/a;

    .line 17
    iget-object v0, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    .line 18
    iget-object v0, v0, Lc/c/a/a/c/l/d0;->d:Landroid/content/Context;

    if-eqz p1, :cond_4

    .line 19
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_4
    throw v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    .line 20
    :cond_5
    throw v3
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/l/d0;->c:Ljava/util/HashMap;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    .line 3
    iget-object v1, v1, Lc/c/a/a/c/l/d0;->e:Landroid/os/Handler;

    .line 4
    iget-object v2, p0, Lc/c/a/a/c/l/e0;->e:Lc/c/a/a/c/l/h$a;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-object p2, p0, Lc/c/a/a/c/l/e0;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lc/c/a/a/c/l/e0;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lc/c/a/a/c/l/e0;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    iput v3, p0, Lc/c/a/a/c/l/e0;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/l/d0;->c:Ljava/util/HashMap;

    .line 2
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/c/a/a/c/l/e0;->g:Lc/c/a/a/c/l/d0;

    .line 3
    iget-object v1, v1, Lc/c/a/a/c/l/d0;->e:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lc/c/a/a/c/l/e0;->e:Lc/c/a/a/c/l/h$a;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lc/c/a/a/c/l/e0;->d:Landroid/os/IBinder;

    iput-object p1, p0, Lc/c/a/a/c/l/e0;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lc/c/a/a/c/l/e0;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    iput p1, p0, Lc/c/a/a/c/l/e0;->b:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

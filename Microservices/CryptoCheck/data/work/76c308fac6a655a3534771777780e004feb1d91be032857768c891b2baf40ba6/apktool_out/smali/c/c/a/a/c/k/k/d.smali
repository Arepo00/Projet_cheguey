.class public Lc/c/a/a/c/k/k/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/c/k/k/d$c;,
        Lc/c/a/a/c/k/k/d$b;,
        Lc/c/a/a/c/k/k/d$a;
    }
.end annotation


# static fields
.field public static final n:Lcom/google/android/gms/common/api/Status;

.field public static final o:Lcom/google/android/gms/common/api/Status;

.field public static final p:Ljava/lang/Object;

.field public static q:Lc/c/a/a/c/k/k/d;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# instance fields
.field public a:J

.field public b:J

.field public c:J

.field public final d:Landroid/content/Context;

.field public final e:Lc/c/a/a/c/d;

.field public final f:Lc/c/a/a/c/l/j;

.field public final g:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/c/a/a/c/k/k/a<",
            "*>;",
            "Lc/c/a/a/c/k/k/d$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field public j:Lc/c/a/a/c/k/k/m;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/c/a/a/c/k/k/a<",
            "*>;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field public final l:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/c/a/a/c/k/k/a<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final m:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc/c/a/a/c/k/k/d;->n:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lc/c/a/a/c/k/k/d;->o:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/c/a/a/c/k/k/d;->p:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/d;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lc/c/a/a/c/k/k/d;->a:J

    const-wide/32 v0, 0x1d4c0

    iput-wide v0, p0, Lc/c/a/a/c/k/k/d;->b:J

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lc/c/a/a/c/k/k/d;->c:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/c/a/a/c/k/k/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/c/a/a/c/k/k/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/c/k/k/d;->j:Lc/c/a/a/c/k/k/m;

    new-instance v0, Lb/f/c;

    invoke-direct {v0}, Lb/f/c;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/k/k/d;->k:Ljava/util/Set;

    new-instance v0, Lb/f/c;

    invoke-direct {v0}, Lb/f/c;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/k/k/d;->l:Ljava/util/Set;

    iput-object p1, p0, Lc/c/a/a/c/k/k/d;->d:Landroid/content/Context;

    new-instance p1, Lc/c/a/a/f/a/c;

    invoke-direct {p1, p2, p0}, Lc/c/a/a/f/a/c;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    iput-object p3, p0, Lc/c/a/a/c/k/k/d;->e:Lc/c/a/a/c/d;

    new-instance p1, Lc/c/a/a/c/l/j;

    invoke-direct {p1, p3}, Lc/c/a/a/c/l/j;-><init>(Lc/c/a/a/c/e;)V

    iput-object p1, p0, Lc/c/a/a/c/k/k/d;->f:Lc/c/a/a/c/l/j;

    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lc/c/a/a/c/k/k/d;
    .locals 4

    sget-object v0, Lc/c/a/a/c/k/k/d;->p:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/c/a/a/c/k/k/d;->q:Lc/c/a/a/c/k/k/d;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lc/c/a/a/c/k/k/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1
    sget-object v3, Lc/c/a/a/c/d;->d:Lc/c/a/a/c/d;

    .line 2
    invoke-direct {v2, p0, v1, v3}, Lc/c/a/a/c/k/k/d;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/d;)V

    sput-object v2, Lc/c/a/a/c/k/k/d;->q:Lc/c/a/a/c/k/k/d;

    :cond_0
    sget-object p0, Lc/c/a/a/c/k/k/d;->q:Lc/c/a/a/c/k/k/d;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Lc/c/a/a/c/k/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/c/a/a/c/k/c;->d:Lc/c/a/a/c/k/k/a;

    .line 2
    iget-object v1, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/a/c/k/k/d$a;

    if-nez v1, :cond_0

    new-instance v1, Lc/c/a/a/c/k/k/d$a;

    invoke-direct {v1, p0, p1}, Lc/c/a/a/c/k/k/d$a;-><init>(Lc/c/a/a/c/k/k/d;Lc/c/a/a/c/k/c;)V

    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v1}, Lc/c/a/a/c/k/k/d$a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->l:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Lc/c/a/a/c/k/k/d$a;->a()V

    return-void
.end method

.method public final c(Lc/c/a/a/c/a;I)Z
    .locals 6

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->e:Lc/c/a/a/c/d;

    iget-object v1, p0, Lc/c/a/a/c/k/k/d;->d:Landroid/content/Context;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 1
    iget v3, p1, Lc/c/a/a/c/a;->c:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p1, Lc/c/a/a/c/a;->d:Landroid/app/PendingIntent;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 2
    iget-object v2, p1, Lc/c/a/a/c/a;->d:Landroid/app/PendingIntent;

    goto :goto_1

    .line 3
    :cond_1
    iget v3, p1, Lc/c/a/a/c/a;->c:I

    .line 4
    invoke-virtual {v0, v1, v3, v2}, Lc/c/a/a/c/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const/high16 v2, 0x8000000

    invoke-static {v1, v4, v3, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_3

    .line 5
    iget p1, p1, Lc/c/a/a/c/a;->c:I

    .line 6
    invoke-static {v1, v2, p2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lc/c/a/a/c/d;->e(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    const/4 v4, 0x1

    :cond_3
    return v4

    .line 7
    :cond_4
    throw v2
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v3, 0x493e0

    const-string v5, "GoogleApiManager"

    const/4 v6, 0x0

    packed-switch v0, :pswitch_data_0

    const/16 p1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown message id: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/c/k/k/d$c;

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    .line 1
    iget-object v3, p1, Lc/c/a/a/c/k/k/d$c;->a:Lc/c/a/a/c/k/k/a;

    .line 2
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    .line 3
    iget-object v3, p1, Lc/c/a/a/c/k/k/d$c;->a:Lc/c/a/a/c/k/k/a;

    .line 4
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/d$a;

    .line 5
    iget-object v3, v0, Lc/c/a/a/c/k/k/d$a;->k:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget-object v3, v0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 6
    iget-object v3, v3, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/16 v4, 0xf

    .line 7
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, v0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 8
    iget-object v3, v3, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/16 v4, 0x10

    .line 9
    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p1, Lc/c/a/a/c/k/k/d$c;->b:Lc/c/a/a/c/c;

    .line 11
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v4, v0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/c/a/a/c/k/k/x;

    instance-of v6, v5, Lc/c/a/a/c/k/k/o;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lc/c/a/a/c/k/k/o;

    invoke-virtual {v6, v0}, Lc/c/a/a/c/k/k/o;->f(Lc/c/a/a/c/k/k/d$a;)[Lc/c/a/a/c/c;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 12
    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    invoke-static {v9, p1}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    const/4 v8, -0x1

    :goto_2
    if-ltz v8, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_0

    .line 13
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_4
    if-ge v1, v4, :cond_13

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Lc/c/a/a/c/k/k/x;

    iget-object v6, v0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    new-instance v6, Lc/c/a/a/c/k/j;

    invoke-direct {v6, p1}, Lc/c/a/a/c/k/j;-><init>(Lc/c/a/a/c/c;)V

    invoke-virtual {v5, v6}, Lc/c/a/a/c/k/k/x;->c(Ljava/lang/RuntimeException;)V

    goto :goto_4

    .line 14
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/c/k/k/d$c;

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    .line 15
    iget-object v1, p1, Lc/c/a/a/c/k/k/d$c;->a:Lc/c/a/a/c/k/k/a;

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    .line 17
    iget-object v1, p1, Lc/c/a/a/c/k/k/d$c;->a:Lc/c/a/a/c/k/k/a;

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/d$a;

    .line 19
    iget-object v1, v0, Lc/c/a/a/c/k/k/d$a;->k:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_a

    :cond_5
    iget-boolean p1, v0, Lc/c/a/a/c/k/k/d$a;->j:Z

    if-nez p1, :cond_13

    iget-object p1, v0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {p1}, Lc/c/a/a/c/k/a$f;->f()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Lc/c/a/a/c/k/k/d$a;->a()V

    goto/16 :goto_a

    :cond_6
    invoke-virtual {v0}, Lc/c/a/a/c/k/k/d$a;->i()V

    goto/16 :goto_a

    .line 20
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/c/k/k/n;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    throw v6

    :cond_7
    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/c/k/k/d$a;

    .line 21
    invoke-virtual {p1, v1}, Lc/c/a/a/c/k/k/d$a;->p(Z)Z

    .line 22
    throw v6

    .line 23
    :cond_8
    throw v6

    .line 24
    :pswitch_3
    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/c/k/k/d$a;

    .line 25
    invoke-virtual {p1, v2}, Lc/c/a/a/c/k/k/d$a;->p(Z)Z

    goto/16 :goto_a

    .line 26
    :pswitch_4
    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/c/k/k/d$a;

    .line 27
    iget-object v0, p1, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 28
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 29
    invoke-static {v0}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lc/c/a/a/c/k/k/d$a;->j:Z

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lc/c/a/a/c/k/k/d$a;->l()V

    iget-object v0, p1, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 30
    iget-object v1, v0, Lc/c/a/a/c/k/k/d;->e:Lc/c/a/a/c/d;

    .line 31
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->d:Landroid/content/Context;

    .line 32
    invoke-virtual {v1, v0}, Lc/c/a/a/c/d;->b(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    const/16 v3, 0x8

    if-ne v0, v1, :cond_9

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v3, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_5
    invoke-virtual {p1, v0}, Lc/c/a/a/c/k/k/d$a;->n(Lcom/google/android/gms/common/api/Status;)V

    iget-object p1, p1, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {p1}, Lc/c/a/a/c/k/a$f;->g()V

    goto/16 :goto_a

    .line 33
    :pswitch_5
    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/a;

    iget-object v1, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/d$a;

    invoke-virtual {v0}, Lc/c/a/a/c/k/k/d$a;->j()V

    goto :goto_6

    :cond_a
    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->l:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_a

    :pswitch_6
    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/c/k/k/d$a;

    .line 34
    iget-object v0, p1, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 35
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 36
    invoke-static {v0}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    iget-boolean v0, p1, Lc/c/a/a/c/k/k/d$a;->j:Z

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lc/c/a/a/c/k/k/d$a;->a()V

    goto/16 :goto_a

    .line 37
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/c/k/c;

    invoke-virtual {p0, p1}, Lc/c/a/a/c/k/k/d;->b(Lc/c/a/a/c/k/c;)V

    goto/16 :goto_a

    :pswitch_8
    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lc/c/a/a/c/k/k/b;->b(Landroid/app/Application;)V

    .line 38
    sget-object p1, Lc/c/a/a/c/k/k/b;->f:Lc/c/a/a/c/k/k/b;

    .line 39
    new-instance v0, Lc/c/a/a/c/k/k/p;

    invoke-direct {v0, p0}, Lc/c/a/a/c/k/k/p;-><init>(Lc/c/a/a/c/k/k/d;)V

    invoke-virtual {p1, v0}, Lc/c/a/a/c/k/k/b;->a(Lc/c/a/a/c/k/k/b$a;)V

    .line 40
    sget-object p1, Lc/c/a/a/c/k/k/b;->f:Lc/c/a/a/c/k/k/b;

    .line 41
    iget-object v0, p1, Lc/c/a/a/c/k/k/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget-object v1, p1, Lc/c/a/a/c/k/k/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_b

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_b

    iget-object v0, p1, Lc/c/a/a/c/k/k/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    :cond_b
    iget-object p1, p1, Lc/c/a/a/c/k/k/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_13

    .line 43
    iput-wide v3, p0, Lc/c/a/a/c/k/k/d;->c:J

    goto/16 :goto_a

    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/c/a;

    iget-object v1, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/a/a/c/k/k/d$a;

    .line 44
    iget v4, v3, Lc/c/a/a/c/k/k/d$a;->h:I

    if-ne v4, v0, :cond_c

    goto :goto_7

    :cond_d
    move-object v3, v6

    :goto_7
    if-eqz v3, :cond_f

    .line 45
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v4, p0, Lc/c/a/a/c/k/k/d;->e:Lc/c/a/a/c/d;

    .line 46
    iget v5, p1, Lc/c/a/a/c/a;->c:I

    if-eqz v4, :cond_e

    .line 47
    invoke-static {v5}, Lc/c/a/a/c/g;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    iget-object p1, p1, Lc/c/a/a/c/a;->e:Ljava/lang/String;

    .line 49
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {v3, v0}, Lc/c/a/a/c/k/k/d$a;->n(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_a

    .line 50
    :cond_e
    throw v6

    :cond_f
    const/16 p1, 0x4c

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-static {v5, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/c/k/k/v;

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    iget-object v1, p1, Lc/c/a/a/c/k/k/v;->c:Lc/c/a/a/c/k/c;

    .line 52
    iget-object v1, v1, Lc/c/a/a/c/k/c;->d:Lc/c/a/a/c/k/k/a;

    .line 53
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/d$a;

    if-nez v0, :cond_10

    iget-object v0, p1, Lc/c/a/a/c/k/k/v;->c:Lc/c/a/a/c/k/c;

    invoke-virtual {p0, v0}, Lc/c/a/a/c/k/k/d;->b(Lc/c/a/a/c/k/c;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    iget-object v1, p1, Lc/c/a/a/c/k/k/v;->c:Lc/c/a/a/c/k/c;

    .line 54
    iget-object v1, v1, Lc/c/a/a/c/k/c;->d:Lc/c/a/a/c/k/k/a;

    .line 55
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/d$a;

    :cond_10
    invoke-virtual {v0}, Lc/c/a/a/c/k/k/d$a;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lc/c/a/a/c/k/k/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v3, p1, Lc/c/a/a/c/k/k/v;->b:I

    if-eq v1, v3, :cond_11

    iget-object p1, p1, Lc/c/a/a/c/k/k/v;->a:Lc/c/a/a/c/k/k/x;

    sget-object v1, Lc/c/a/a/c/k/k/d;->n:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lc/c/a/a/c/k/k/x;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lc/c/a/a/c/k/k/d$a;->j()V

    goto :goto_a

    :cond_11
    iget-object p1, p1, Lc/c/a/a/c/k/k/v;->a:Lc/c/a/a/c/k/k/x;

    invoke-virtual {v0, p1}, Lc/c/a/a/c/k/k/d$a;->e(Lc/c/a/a/c/k/k/x;)V

    goto :goto_a

    :pswitch_b
    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/d$a;

    invoke-virtual {v0}, Lc/c/a/a/c/k/k/d$a;->k()V

    invoke-virtual {v0}, Lc/c/a/a/c/k/k/d$a;->a()V

    goto :goto_8

    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lc/c/a/a/c/k/k/j0;

    .line 56
    throw v6

    .line 57
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    const-wide/16 v3, 0x2710

    :cond_12
    iput-wide v3, p0, Lc/c/a/a/c/k/k/d;->c:J

    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/a/c/k/k/a;

    iget-object v3, p0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v4, p0, Lc/c/a/a/c/k/k/d;->c:J

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_9

    :cond_13
    :goto_a
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

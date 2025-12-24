.class public abstract Lc/c/a/a/c/l/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/c/l/b$i;,
        Lc/c/a/a/c/l/b$f;,
        Lc/c/a/a/c/l/b$k;,
        Lc/c/a/a/c/l/b$l;,
        Lc/c/a/a/c/l/b$d;,
        Lc/c/a/a/c/l/b$h;,
        Lc/c/a/a/c/l/b$g;,
        Lc/c/a/a/c/l/b$e;,
        Lc/c/a/a/c/l/b$c;,
        Lc/c/a/a/c/l/b$b;,
        Lc/c/a/a/c/l/b$a;,
        Lc/c/a/a/c/l/b$j;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final u:[Lc/c/a/a/c/c;


# instance fields
.field public a:Lc/c/a/a/c/l/g0;

.field public final b:Landroid/content/Context;

.field public final c:Lc/c/a/a/c/l/h;

.field public final d:Landroid/os/Handler;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Lc/c/a/a/c/l/n;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mServiceBrokerLock"
    .end annotation
.end field

.field public h:Lc/c/a/a/c/l/b$c;

.field public i:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/c/a/a/c/l/b$h<",
            "*>;>;"
        }
    .end annotation
.end field

.field public k:Lc/c/a/a/c/l/b$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/l/b$j;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public l:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field public final m:Lc/c/a/a/c/l/b$a;

.field public final n:Lc/c/a/a/c/l/b$b;

.field public final o:I

.field public final p:Ljava/lang/String;

.field public q:Lc/c/a/a/c/a;

.field public r:Z

.field public volatile s:Lc/c/a/a/c/l/a0;

.field public t:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lc/c/a/a/c/c;

    sput-object v0, Lc/c/a/a/c/l/b;->u:[Lc/c/a/a/c/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/l/h;Lc/c/a/a/c/e;ILc/c/a/a/c/l/b$a;Lc/c/a/a/c/l/b$b;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/l/b;->e:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/l/b;->f:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/l/b;->j:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lc/c/a/a/c/l/b;->l:I

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/c/l/b;->q:Lc/c/a/a/c/a;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lc/c/a/a/c/l/b;->r:Z

    iput-object v0, p0, Lc/c/a/a/c/l/b;->s:Lc/c/a/a/c/l/a0;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/a/a/c/l/b;->b:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lc/c/a/a/c/l/b;->c:Lc/c/a/a/c/l/h;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lc/c/a/a/c/l/b$g;

    invoke-direct {p1, p0, p2}, Lc/c/a/a/c/l/b$g;-><init>(Lc/c/a/a/c/l/b;Landroid/os/Looper;)V

    iput-object p1, p0, Lc/c/a/a/c/l/b;->d:Landroid/os/Handler;

    iput p5, p0, Lc/c/a/a/c/l/b;->o:I

    iput-object p6, p0, Lc/c/a/a/c/l/b;->m:Lc/c/a/a/c/l/b$a;

    iput-object p7, p0, Lc/c/a/a/c/l/b;->n:Lc/c/a/a/c/l/b$b;

    iput-object p8, p0, Lc/c/a/a/c/l/b;->p:Ljava/lang/String;

    return-void
.end method

.method public static A(Lc/c/a/a/c/l/b;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc/c/a/a/c/l/b;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->t()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :goto_0
    return v1
.end method

.method public static y(Lc/c/a/a/c/l/b;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/c/a/a/c/l/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc/c/a/a/c/l/b;->l:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    .line 2
    iput-boolean v3, p0, Lc/c/a/a/c/l/b;->r:Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x4

    :goto_1
    iget-object v1, p0, Lc/c/a/a/c/l/b;->d:Landroid/os/Handler;

    iget-object p0, p0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v2, 0x10

    invoke-virtual {v1, v0, p0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p0

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static z(Lc/c/a/a/c/l/b;IILandroid/os/IInterface;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/a/c/l/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc/c/a/a/c/l/b;->l:I

    if-eq v1, p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p3}, Lc/c/a/a/c/l/b;->x(ILandroid/os/IInterface;)V

    const/4 p0, 0x1

    monitor-exit v0

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/l/b;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/c/l/b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public b(Lc/c/a/a/c/l/b$e;)V
    .locals 2

    check-cast p1, Lc/c/a/a/c/k/k/t;

    .line 1
    iget-object v0, p1, Lc/c/a/a/c/k/k/t;->a:Lc/c/a/a/c/k/k/d$a;

    iget-object v0, v0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 2
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 3
    new-instance v1, Lc/c/a/a/c/k/k/s;

    invoke-direct {v1, p1}, Lc/c/a/a/c/k/k/s;-><init>(Lc/c/a/a/c/k/k/t;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lc/c/a/a/c/l/b$c;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/a/a/c/l/b;->h:Lc/c/a/a/c/l/b$c;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lc/c/a/a/c/l/b;->x(ILandroid/os/IInterface;)V

    return-void
.end method

.method public d()Z
    .locals 3

    iget-object v0, p0, Lc/c/a/a/c/l/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc/c/a/a/c/l/b;->l:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lc/c/a/a/c/l/b;->l:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()[Lc/c/a/a/c/c;
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/l/b;->s:Lc/c/a/a/c/l/a0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lc/c/a/a/c/l/a0;->c:[Lc/c/a/a/c/c;

    return-object v0
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lc/c/a/a/c/l/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc/c/a/a/c/l/b;->l:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public g()V
    .locals 5

    iget-object v0, p0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lc/c/a/a/c/l/b;->j:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/c/a/a/c/l/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lc/c/a/a/c/l/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/c/a/a/c/l/b$h;

    .line 1
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iput-object v3, v4, Lc/c/a/a/c/l/b$h;->a:Ljava/lang/Object;

    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 2
    :cond_0
    iget-object v1, p0, Lc/c/a/a/c/l/b;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v1, p0, Lc/c/a/a/c/l/b;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object v3, p0, Lc/c/a/a/c/l/b;->g:Lc/c/a/a/c/l/n;

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lc/c/a/a/c/l/b;->x(ILandroid/os/IInterface;)V

    return-void

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public i()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/l/g0;->b:Ljava/lang/String;

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n(Lc/c/a/a/c/l/k;Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/l/k;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->r()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lc/c/a/a/c/l/f;

    iget v2, p0, Lc/c/a/a/c/l/b;->o:I

    invoke-direct {v1, v2}, Lc/c/a/a/c/l/f;-><init>(I)V

    iget-object v2, p0, Lc/c/a/a/c/l/b;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc/c/a/a/c/l/f;->e:Ljava/lang/String;

    iput-object v0, v1, Lc/c/a/a/c/l/f;->h:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lc/c/a/a/c/l/f;->g:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->j()Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p2, p0

    check-cast p2, Lc/c/a/a/c/l/g;

    .line 1
    iget-object p2, p2, Lc/c/a/a/c/l/g;->w:Landroid/accounts/Account;

    if-eqz p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p2, v1, Lc/c/a/a/c/l/f;->i:Landroid/accounts/Account;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lc/c/a/a/c/l/f;->f:Landroid/os/IBinder;

    :cond_2
    sget-object p1, Lc/c/a/a/c/l/b;->u:[Lc/c/a/a/c/c;

    iput-object p1, v1, Lc/c/a/a/c/l/f;->j:[Lc/c/a/a/c/c;

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->q()[Lc/c/a/a/c/c;

    move-result-object p1

    iput-object p1, v1, Lc/c/a/a/c/l/f;->k:[Lc/c/a/a/c/c;

    const/4 p1, 0x1

    :try_start_0
    iget-object p2, p0, Lc/c/a/a/c/l/b;->f:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lc/c/a/a/c/l/b;->g:Lc/c/a/a/c/l/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/c/a/a/c/l/b;->g:Lc/c/a/a/c/l/n;

    new-instance v2, Lc/c/a/a/c/l/b$i;

    iget-object v3, p0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, p0, v3}, Lc/c/a/a/c/l/b$i;-><init>(Lc/c/a/a/c/l/b;I)V

    invoke-interface {v0, v2, v1}, Lc/c/a/a/c/l/n;->q(Lc/c/a/a/c/l/l;Lc/c/a/a/c/l/f;)V

    goto :goto_1

    :cond_3
    const-string v0, "GmsClient"

    const-string v1, "mServiceBroker is null, client disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    goto :goto_2

    :catch_1
    move-exception p2

    :goto_2
    const-string v0, "GmsClient"

    const-string v1, "IGmsServiceBroker.getService failed"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p2, 0x8

    iget-object v0, p0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 3
    iget-object v1, p0, Lc/c/a/a/c/l/b;->d:Landroid/os/Handler;

    new-instance v2, Lc/c/a/a/c/l/b$k;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p2, v3, v3}, Lc/c/a/a/c/l/b$k;-><init>(Lc/c/a/a/c/l/b;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p2, -0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catch_2
    move-exception p1

    .line 4
    throw p1

    :catch_3
    move-exception p2

    const-string v0, "GmsClient"

    const-string v1, "IGmsServiceBroker.getService failed"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    iget-object p2, p0, Lc/c/a/a/c/l/b;->d:Landroid/os/Handler;

    iget-object v0, p0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x6

    invoke-virtual {p2, v1, v0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public abstract p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public q()[Lc/c/a/a/c/c;
    .locals 1

    sget-object v0, Lc/c/a/a/c/l/b;->u:[Lc/c/a/a/c/c;

    return-object v0
.end method

.method public r()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final s()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/a/a/c/l/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lc/c/a/a/c/l/b;->l:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 1
    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p0, Lc/c/a/a/c/l/b;->i:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lc/c/a/a/c/l/q;->i(ZLjava/lang/Object;)V

    iget-object v1, p0, Lc/c/a/a/c/l/b;->i:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    .line 3
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_2
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract t()Ljava/lang/String;
.end method

.method public abstract u()Ljava/lang/String;
.end method

.method public v()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public w(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method public final x(ILandroid/os/IInterface;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lc/c/a/a/c/l/q;->b(Z)V

    iget-object v3, p0, Lc/c/a/a/c/l/b;->e:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iput p1, p0, Lc/c/a/a/c/l/b;->l:I

    iput-object p2, p0, Lc/c/a/a/c/l/b;->i:Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Lc/c/a/a/c/l/b;->w(ILandroid/os/IInterface;)V

    if-eq p1, v1, :cond_6

    const/4 p2, 0x2

    const/4 v1, 0x3

    if-eq p1, p2, :cond_4

    if-eq p1, v1, :cond_4

    if-eq p1, v2, :cond_3

    goto/16 :goto_3

    .line 1
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto/16 :goto_3

    .line 2
    :cond_4
    iget-object p1, p0, Lc/c/a/a/c/l/b;->k:Lc/c/a/a/c/l/b$j;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    if-eqz p1, :cond_5

    const-string p1, "GmsClient"

    iget-object p2, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 3
    iget-object p2, p2, Lc/c/a/a/c/l/g0;->a:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 5
    iget-object v1, v1, Lc/c/a/a/c/l/g0;->b:Ljava/lang/String;

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x46

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lc/c/a/a/c/l/b;->c:Lc/c/a/a/c/l/h;

    iget-object p1, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 7
    iget-object v5, p1, Lc/c/a/a/c/l/g0;->a:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 9
    iget-object v6, p1, Lc/c/a/a/c/l/g0;->b:Ljava/lang/String;

    .line 10
    iget-object p1, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 11
    iget v7, p1, Lc/c/a/a/c/l/g0;->c:I

    .line 12
    iget-object v8, p0, Lc/c/a/a/c/l/b;->k:Lc/c/a/a/c/l/b$j;

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->B()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lc/c/a/a/c/l/h;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object p1, p0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_5
    new-instance p1, Lc/c/a/a/c/l/b$j;

    iget-object p2, p0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lc/c/a/a/c/l/b$j;-><init>(Lc/c/a/a/c/l/b;I)V

    iput-object p1, p0, Lc/c/a/a/c/l/b;->k:Lc/c/a/a/c/l/b$j;

    new-instance p1, Lc/c/a/a/c/l/g0;

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->v()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->u()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, p2, v1, v0}, Lc/c/a/a/c/l/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    iget-object p2, p0, Lc/c/a/a/c/l/b;->c:Lc/c/a/a/c/l/h;

    .line 13
    iget-object v0, p1, Lc/c/a/a/c/l/g0;->a:Ljava/lang/String;

    .line 14
    iget-object v1, p1, Lc/c/a/a/c/l/g0;->b:Ljava/lang/String;

    .line 15
    iget p1, p1, Lc/c/a/a/c/l/g0;->c:I

    .line 16
    iget-object v2, p0, Lc/c/a/a/c/l/b;->k:Lc/c/a/a/c/l/b$j;

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->B()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lc/c/a/a/c/l/h$a;

    invoke-direct {v5, v0, v1, p1}, Lc/c/a/a/c/l/h$a;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, v5, v2, v4}, Lc/c/a/a/c/l/h;->b(Lc/c/a/a/c/l/h$a;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "GmsClient"

    iget-object p2, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 17
    iget-object p2, p2, Lc/c/a/a/c/l/g0;->a:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 19
    iget-object v0, v0, Lc/c/a/a/c/l/g0;->b:Ljava/lang/String;

    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x22

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unable to connect to service: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    iget-object p2, p0, Lc/c/a/a/c/l/b;->t:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    .line 21
    iget-object v0, p0, Lc/c/a/a/c/l/b;->d:Landroid/os/Handler;

    new-instance v1, Lc/c/a/a/c/l/b$l;

    invoke-direct {v1, p0, p1}, Lc/c/a/a/c/l/b$l;-><init>(Lc/c/a/a/c/l/b;I)V

    const/4 p1, 0x7

    const/4 v2, -0x1

    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 22
    :cond_6
    iget-object p1, p0, Lc/c/a/a/c/l/b;->k:Lc/c/a/a/c/l/b$j;

    if-eqz p1, :cond_7

    iget-object v4, p0, Lc/c/a/a/c/l/b;->c:Lc/c/a/a/c/l/h;

    iget-object p1, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 23
    iget-object v5, p1, Lc/c/a/a/c/l/g0;->a:Ljava/lang/String;

    .line 24
    iget-object p1, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 25
    iget-object v6, p1, Lc/c/a/a/c/l/g0;->b:Ljava/lang/String;

    .line 26
    iget-object p1, p0, Lc/c/a/a/c/l/b;->a:Lc/c/a/a/c/l/g0;

    .line 27
    iget v7, p1, Lc/c/a/a/c/l/g0;->c:I

    .line 28
    iget-object v8, p0, Lc/c/a/a/c/l/b;->k:Lc/c/a/a/c/l/b$j;

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->B()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v4 .. v9}, Lc/c/a/a/c/l/h;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lc/c/a/a/c/l/b;->k:Lc/c/a/a/c/l/b$j;

    :cond_7
    :goto_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

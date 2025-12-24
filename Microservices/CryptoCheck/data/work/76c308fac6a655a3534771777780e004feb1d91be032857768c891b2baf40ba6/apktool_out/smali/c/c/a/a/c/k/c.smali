.class public Lc/c/a/a/c/k/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/a/c/k/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/c/a/a/c/k/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TO;>;"
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lc/c/a/a/c/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final c:Lc/c/a/a/c/k/a$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field public final d:Lc/c/a/a/c/k/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/k/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:I

.field public final f:Lc/c/a/a/c/k/k/j;

.field public final g:Lc/c/a/a/c/k/k/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lc/c/a/a/c/k/a;Lc/c/a/a/c/k/a$d;Lc/c/a/a/c/k/k/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lc/c/a/a/c/k/a<",
            "TO;>;TO;",
            "Lc/c/a/a/c/k/k/j;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "StatusExceptionMapper must not be null."

    .line 1
    invoke-static {p4, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lc/c/a/a/c/k/c$a;

    const/4 v2, 0x0

    invoke-direct {v1, p4, v2, v0}, Lc/c/a/a/c/k/c$a;-><init>(Lc/c/a/a/c/k/k/j;Landroid/accounts/Account;Landroid/os/Looper;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p4, "Null context is not permitted."

    invoke-static {p1, p4}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "Api must not be null."

    invoke-static {p2, p4}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {v1, p4}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/c/k/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/a/c/k/c;->b:Lc/c/a/a/c/k/a;

    iput-object p3, p0, Lc/c/a/a/c/k/c;->c:Lc/c/a/a/c/k/a$d;

    .line 4
    new-instance p1, Lc/c/a/a/c/k/k/a;

    invoke-direct {p1, p2, p3}, Lc/c/a/a/c/k/k/a;-><init>(Lc/c/a/a/c/k/a;Lc/c/a/a/c/k/a$d;)V

    .line 5
    iput-object p1, p0, Lc/c/a/a/c/k/c;->d:Lc/c/a/a/c/k/k/a;

    iget-object p1, p0, Lc/c/a/a/c/k/c;->a:Landroid/content/Context;

    invoke-static {p1}, Lc/c/a/a/c/k/k/d;->a(Landroid/content/Context;)Lc/c/a/a/c/k/k/d;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/a/c/k/c;->g:Lc/c/a/a/c/k/k/d;

    .line 6
    iget-object p1, p1, Lc/c/a/a/c/k/k/d;->g:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    .line 7
    iput p1, p0, Lc/c/a/a/c/k/c;->e:I

    iget-object p1, v1, Lc/c/a/a/c/k/c$a;->a:Lc/c/a/a/c/k/k/j;

    iput-object p1, p0, Lc/c/a/a/c/k/c;->f:Lc/c/a/a/c/k/k/j;

    iget-object p1, p0, Lc/c/a/a/c/k/c;->g:Lc/c/a/a/c/k/k/d;

    .line 8
    iget-object p1, p1, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public a()Lc/c/a/a/c/l/c$a;
    .locals 4

    new-instance v0, Lc/c/a/a/c/l/c$a;

    invoke-direct {v0}, Lc/c/a/a/c/l/c$a;-><init>()V

    iget-object v1, p0, Lc/c/a/a/c/k/c;->c:Lc/c/a/a/c/k/a$d;

    instance-of v2, v1, Lc/c/a/a/c/k/a$d$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v1, Lc/c/a/a/c/k/a$d$b;

    invoke-interface {v1}, Lc/c/a/a/c/k/a$d$b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1
    iget-object v2, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/accounts/Account;

    iget-object v1, v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->e:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-direct {v2, v1, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    goto :goto_0

    .line 2
    :cond_1
    iget-object v1, p0, Lc/c/a/a/c/k/c;->c:Lc/c/a/a/c/k/a$d;

    instance-of v2, v1, Lc/c/a/a/c/k/a$d$a;

    if-eqz v2, :cond_2

    check-cast v1, Lc/c/a/a/c/k/a$d$a;

    invoke-interface {v1}, Lc/c/a/a/c/k/a$d$a;->a()Landroid/accounts/Account;

    move-result-object v3

    .line 3
    :cond_2
    :goto_0
    iput-object v3, v0, Lc/c/a/a/c/l/c$a;->a:Landroid/accounts/Account;

    .line 4
    iget-object v1, p0, Lc/c/a/a/c/k/c;->c:Lc/c/a/a/c/k/a$d;

    instance-of v2, v1, Lc/c/a/a/c/k/a$d$b;

    if-eqz v2, :cond_3

    check-cast v1, Lc/c/a/a/c/k/a$d$b;

    invoke-interface {v1}, Lc/c/a/a/c/k/a$d$b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->h()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 5
    :goto_1
    iget-object v2, v0, Lc/c/a/a/c/l/c$a;->b:Lb/f/c;

    if-nez v2, :cond_4

    new-instance v2, Lb/f/c;

    invoke-direct {v2}, Lb/f/c;-><init>()V

    iput-object v2, v0, Lc/c/a/a/c/l/c$a;->b:Lb/f/c;

    :cond_4
    iget-object v2, v0, Lc/c/a/a/c/l/c$a;->b:Lb/f/c;

    invoke-virtual {v2, v1}, Lb/f/c;->addAll(Ljava/util/Collection;)Z

    .line 6
    iget-object v1, p0, Lc/c/a/a/c/k/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 7
    iput-object v1, v0, Lc/c/a/a/c/l/c$a;->e:Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lc/c/a/a/c/k/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 9
    iput-object v1, v0, Lc/c/a/a/c/l/c$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(ILc/c/a/a/c/k/k/k;)Lc/c/a/a/h/d;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lc/c/a/a/c/k/a$b;",
            ">(I",
            "Lc/c/a/a/c/k/k/k<",
            "TA;TTResult;>;)",
            "Lc/c/a/a/h/d<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lc/c/a/a/h/e;

    invoke-direct {v0}, Lc/c/a/a/h/e;-><init>()V

    iget-object v1, p0, Lc/c/a/a/c/k/c;->g:Lc/c/a/a/c/k/k/d;

    iget-object v2, p0, Lc/c/a/a/c/k/c;->f:Lc/c/a/a/c/k/k/j;

    .line 1
    new-instance v3, Lc/c/a/a/c/k/k/h0;

    invoke-direct {v3, p1, p2, v0, v2}, Lc/c/a/a/c/k/k/h0;-><init>(ILc/c/a/a/c/k/k/k;Lc/c/a/a/h/e;Lc/c/a/a/c/k/k/j;)V

    iget-object p1, v1, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    new-instance p2, Lc/c/a/a/c/k/k/v;

    iget-object v1, v1, Lc/c/a/a/c/k/k/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p2, v3, v1, p0}, Lc/c/a/a/c/k/k/v;-><init>(Lc/c/a/a/c/k/k/x;ILc/c/a/a/c/k/c;)V

    const/4 v1, 0x4

    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2
    iget-object p1, v0, Lc/c/a/a/h/e;->a:Lc/c/a/a/h/t;

    return-object p1
.end method

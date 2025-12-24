.class public abstract Lc/c/a/a/c/l/g;
.super Lc/c/a/a/c/l/b;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/a$f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lc/c/a/a/c/l/b<",
        "TT;>;",
        "Lc/c/a/a/c/k/a$f;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILc/c/a/a/c/l/c;Lc/c/a/a/c/k/k/c;Lc/c/a/a/c/k/k/h;)V
    .locals 11

    move-object v10, p0

    move-object v0, p4

    .line 1
    sget-object v1, Lc/c/a/a/c/l/h;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc/c/a/a/c/l/h;->b:Lc/c/a/a/c/l/h;

    if-nez v2, :cond_0

    new-instance v2, Lc/c/a/a/c/l/d0;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lc/c/a/a/c/l/d0;-><init>(Landroid/content/Context;)V

    sput-object v2, Lc/c/a/a/c/l/h;->b:Lc/c/a/a/c/l/h;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lc/c/a/a/c/l/h;->b:Lc/c/a/a/c/l/h;

    .line 2
    sget-object v5, Lc/c/a/a/c/d;->d:Lc/c/a/a/c/d;

    .line 3
    invoke-static/range {p5 .. p5}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p6 .. p6}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v7, Lc/c/a/a/c/l/w;

    move-object/from16 v1, p5

    invoke-direct {v7, v1}, Lc/c/a/a/c/l/w;-><init>(Lc/c/a/a/c/k/k/c;)V

    .line 5
    new-instance v8, Lc/c/a/a/c/l/x;

    move-object/from16 v1, p6

    invoke-direct {v8, v1}, Lc/c/a/a/c/l/x;-><init>(Lc/c/a/a/c/k/k/h;)V

    .line 6
    iget-object v9, v0, Lc/c/a/a/c/l/c;->f:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p3

    .line 7
    invoke-direct/range {v1 .. v9}, Lc/c/a/a/c/l/b;-><init>(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/l/h;Lc/c/a/a/c/e;ILc/c/a/a/c/l/b$a;Lc/c/a/a/c/l/b$b;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Lc/c/a/a/c/l/c;->a:Landroid/accounts/Account;

    .line 9
    iput-object v1, v10, Lc/c/a/a/c/l/g;->w:Landroid/accounts/Account;

    .line 10
    iget-object v0, v0, Lc/c/a/a/c/l/c;->c:Ljava/util/Set;

    .line 11
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_2
    iput-object v0, v10, Lc/c/a/a/c/l/g;->v:Ljava/util/Set;

    return-void

    :catchall_0
    move-exception v0

    .line 13
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/c/l/g;->v:Ljava/util/Set;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 1
    sget v0, Lc/c/a/a/c/e;->a:I

    return v0
.end method

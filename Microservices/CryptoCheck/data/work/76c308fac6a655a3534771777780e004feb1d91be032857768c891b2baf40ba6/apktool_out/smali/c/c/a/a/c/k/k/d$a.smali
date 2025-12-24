.class public final Lc/c/a/a/c/k/k/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/a/a/c/k/d;
.implements Lc/c/a/a/c/k/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/k/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lc/c/a/a/c/k/a$d;",
        ">",
        "Ljava/lang/Object;",
        "Lc/c/a/a/c/k/d;",
        "Lc/c/a/a/c/k/e;",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lc/c/a/a/c/k/k/x;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc/c/a/a/c/k/a$f;

.field public final c:Lc/c/a/a/c/k/a$b;

.field public final d:Lc/c/a/a/c/k/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/k/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field public final e:Lc/c/a/a/c/k/k/m0;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/c/a/a/c/k/k/j0;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/c/a/a/c/k/k/g<",
            "*>;",
            "Lc/c/a/a/c/k/k/w;",
            ">;"
        }
    .end annotation
.end field

.field public final h:I

.field public final i:Lc/c/a/a/c/k/k/z;

.field public j:Z

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/a/c/k/k/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public l:Lc/c/a/a/c/a;

.field public final synthetic m:Lc/c/a/a/c/k/k/d;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/k/k/d;Lc/c/a/a/c/k/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/c/k/c<",
            "TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/k/k/d$a;->f:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/k/k/d$a;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/c/a/a/c/k/k/d$a;->k:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/c/k/k/d$a;->l:Lc/c/a/a/c/a;

    .line 1
    iget-object v1, p1, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 3
    invoke-virtual {p2}, Lc/c/a/a/c/k/c;->a()Lc/c/a/a/c/l/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/a/c/l/c$a;->a()Lc/c/a/a/c/l/c;

    move-result-object v5

    iget-object v1, p2, Lc/c/a/a/c/k/c;->b:Lc/c/a/a/c/k/a;

    .line 4
    iget-object v2, v1, Lc/c/a/a/c/k/a;->a:Lc/c/a/a/c/k/a$a;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder"

    invoke-static {v2, v3}, Lc/c/a/a/c/l/q;->i(ZLjava/lang/Object;)V

    iget-object v2, v1, Lc/c/a/a/c/k/a;->a:Lc/c/a/a/c/k/a$a;

    .line 5
    iget-object v3, p2, Lc/c/a/a/c/k/c;->a:Landroid/content/Context;

    iget-object v6, p2, Lc/c/a/a/c/k/c;->c:Lc/c/a/a/c/k/a$d;

    move-object v7, p0

    move-object v8, p0

    invoke-virtual/range {v2 .. v8}, Lc/c/a/a/c/k/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/l/c;Ljava/lang/Object;Lc/c/a/a/c/k/d;Lc/c/a/a/c/k/e;)Lc/c/a/a/c/k/a$f;

    move-result-object v1

    .line 6
    iput-object v1, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    instance-of v2, v1, Lc/c/a/a/c/l/t;

    if-eqz v2, :cond_2

    check-cast v1, Lc/c/a/a/c/l/t;

    if-eqz v1, :cond_1

    iput-object v0, p0, Lc/c/a/a/c/k/k/d$a;->c:Lc/c/a/a/c/k/a$b;

    goto :goto_1

    .line 7
    :cond_1
    throw v0

    .line 8
    :cond_2
    iput-object v1, p0, Lc/c/a/a/c/k/k/d$a;->c:Lc/c/a/a/c/k/a$b;

    .line 9
    :goto_1
    iget-object v1, p2, Lc/c/a/a/c/k/c;->d:Lc/c/a/a/c/k/k/a;

    .line 10
    iput-object v1, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    new-instance v1, Lc/c/a/a/c/k/k/m0;

    invoke-direct {v1}, Lc/c/a/a/c/k/k/m0;-><init>()V

    iput-object v1, p0, Lc/c/a/a/c/k/k/d$a;->e:Lc/c/a/a/c/k/k/m0;

    .line 11
    iget v1, p2, Lc/c/a/a/c/k/c;->e:I

    .line 12
    iput v1, p0, Lc/c/a/a/c/k/k/d$a;->h:I

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v1}, Lc/c/a/a/c/k/a$f;->j()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 13
    iget-object v0, p1, Lc/c/a/a/c/k/k/d;->d:Landroid/content/Context;

    .line 14
    iget-object p1, p1, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 15
    new-instance v1, Lc/c/a/a/c/k/k/z;

    invoke-virtual {p2}, Lc/c/a/a/c/k/c;->a()Lc/c/a/a/c/l/c$a;

    move-result-object p2

    invoke-virtual {p2}, Lc/c/a/a/c/l/c$a;->a()Lc/c/a/a/c/l/c;

    move-result-object p2

    invoke-direct {v1, v0, p1, p2}, Lc/c/a/a/c/k/k/z;-><init>(Landroid/content/Context;Landroid/os/Handler;Lc/c/a/a/c/l/c;)V

    .line 16
    iput-object v1, p0, Lc/c/a/a/c/k/k/d$a;->i:Lc/c/a/a/c/k/k/z;

    return-void

    :cond_3
    iput-object v0, p0, Lc/c/a/a/c/k/k/d$a;->i:Lc/c/a/a/c/k/k/z;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v0}, Lc/c/a/a/c/k/a$f;->f()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v0}, Lc/c/a/a/c/k/a$f;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 3
    iget-object v1, v0, Lc/c/a/a/c/k/k/d;->f:Lc/c/a/a/c/l/j;

    .line 4
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->d:Landroid/content/Context;

    .line 5
    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    .line 6
    invoke-static {v0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Lc/c/a/a/c/k/a$f;->l()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v2}, Lc/c/a/a/c/k/a$f;->o()I

    move-result v2

    iget-object v4, v1, Lc/c/a/a/c/l/j;->a:Landroid/util/SparseIntArray;

    const/4 v6, -0x1

    invoke-virtual {v4, v2, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-eq v4, v6, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_0
    iget-object v8, v1, Lc/c/a/a/c/l/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    iget-object v8, v1, Lc/c/a/a/c/l/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    if-le v8, v2, :cond_3

    iget-object v9, v1, Lc/c/a/a/c/l/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_4
    move v5, v4

    :goto_1
    if-ne v5, v6, :cond_5

    iget-object v4, v1, Lc/c/a/a/c/l/j;->b:Lc/c/a/a/c/e;

    invoke-virtual {v4, v0, v2}, Lc/c/a/a/c/e;->c(Landroid/content/Context;I)I

    move-result v0

    move v5, v0

    :cond_5
    iget-object v0, v1, Lc/c/a/a/c/l/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-eqz v5, :cond_6

    .line 7
    new-instance v0, Lc/c/a/a/c/a;

    invoke-direct {v0, v5, v3}, Lc/c/a/a/c/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lc/c/a/a/c/k/k/d$a;->t(Lc/c/a/a/c/a;)V

    return-void

    :cond_6
    new-instance v0, Lc/c/a/a/c/k/k/d$b;

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    iget-object v3, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    invoke-direct {v0, v1, v2, v3}, Lc/c/a/a/c/k/k/d$b;-><init>(Lc/c/a/a/c/k/k/d;Lc/c/a/a/c/k/a$f;Lc/c/a/a/c/k/k/a;)V

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v1}, Lc/c/a/a/c/k/a$f;->j()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->i:Lc/c/a/a/c/k/k/z;

    .line 8
    iget-object v2, v1, Lc/c/a/a/c/k/k/z;->f:Lc/c/a/a/g/e;

    if-eqz v2, :cond_7

    invoke-interface {v2}, Lc/c/a/a/c/k/a$f;->g()V

    :cond_7
    iget-object v2, v1, Lc/c/a/a/c/k/k/z;->e:Lc/c/a/a/c/l/c;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 9
    iput-object v3, v2, Lc/c/a/a/c/l/c;->h:Ljava/lang/Integer;

    .line 10
    iget-object v2, v1, Lc/c/a/a/c/k/k/z;->c:Lc/c/a/a/c/k/a$a;

    iget-object v3, v1, Lc/c/a/a/c/k/k/z;->a:Landroid/content/Context;

    iget-object v4, v1, Lc/c/a/a/c/k/k/z;->b:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    iget-object v5, v1, Lc/c/a/a/c/k/k/z;->e:Lc/c/a/a/c/l/c;

    .line 11
    iget-object v6, v5, Lc/c/a/a/c/l/c;->g:Lc/c/a/a/g/a;

    move-object v7, v1

    move-object v8, v1

    .line 12
    invoke-virtual/range {v2 .. v8}, Lc/c/a/a/c/k/a$a;->a(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/l/c;Ljava/lang/Object;Lc/c/a/a/c/k/d;Lc/c/a/a/c/k/e;)Lc/c/a/a/c/k/a$f;

    move-result-object v2

    check-cast v2, Lc/c/a/a/g/e;

    iput-object v2, v1, Lc/c/a/a/c/k/k/z;->f:Lc/c/a/a/g/e;

    iput-object v0, v1, Lc/c/a/a/c/k/k/z;->g:Lc/c/a/a/c/k/k/a0;

    iget-object v2, v1, Lc/c/a/a/c/k/k/z;->d:Ljava/util/Set;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    iget-object v1, v1, Lc/c/a/a/c/k/k/z;->f:Lc/c/a/a/g/e;

    invoke-interface {v1}, Lc/c/a/a/g/e;->h()V

    goto :goto_4

    :cond_9
    :goto_3
    iget-object v2, v1, Lc/c/a/a/c/k/k/z;->b:Landroid/os/Handler;

    new-instance v3, Lc/c/a/a/c/k/k/y;

    invoke-direct {v3, v1}, Lc/c/a/a/c/k/k/y;-><init>(Lc/c/a/a/c/k/k/z;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    :cond_a
    :goto_4
    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v1, v0}, Lc/c/a/a/c/k/a$f;->c(Lc/c/a/a/c/l/b$c;)V

    return-void

    .line 14
    :cond_b
    throw v3

    :cond_c
    :goto_5
    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v0}, Lc/c/a/a/c/k/a$f;->j()Z

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->h()V

    return-void

    :cond_0
    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 3
    iget-object p1, p1, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 4
    new-instance v0, Lc/c/a/a/c/k/k/r;

    invoke-direct {v0, p0}, Lc/c/a/a/c/k/k/r;-><init>(Lc/c/a/a/c/k/k/d$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d([Lc/c/a/a/c/c;)Lc/c/a/a/c/c;
    .locals 9

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v0}, Lc/c/a/a/c/k/a$f;->e()[Lc/c/a/a/c/c;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    new-array v0, v1, [Lc/c/a/a/c/c;

    :cond_1
    new-instance v2, Lb/f/a;

    array-length v3, v0

    invoke-direct {v2, v3}, Lb/f/a;-><init>(I)V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v0, v4

    .line 1
    iget-object v6, v5, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v5}, Lc/c/a/a/c/c;->h()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lb/f/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_5

    aget-object v3, p1, v1

    .line 3
    iget-object v4, v3, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v4}, Lb/f/h;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5
    iget-object v4, v3, Lc/c/a/a/c/c;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v2, v4}, Lb/f/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3}, Lc/c/a/a/c/c;->h()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v3

    :cond_5
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final e(Lc/c/a/a/c/k/k/x;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v0}, Lc/c/a/a/c/k/a$f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lc/c/a/a/c/k/k/d$a;->f(Lc/c/a/a/c/k/k/x;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->m()V

    return-void

    :cond_0
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->l:Lc/c/a/a/c/a;

    if-eqz p1, :cond_3

    .line 3
    iget v0, p1, Lc/c/a/a/c/a;->c:I

    if-eqz v0, :cond_2

    iget-object p1, p1, Lc/c/a/a/c/a;->d:Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->l:Lc/c/a/a/c/a;

    invoke-virtual {p0, p1}, Lc/c/a/a/c/k/k/d$a;->t(Lc/c/a/a/c/a;)V

    return-void

    :cond_3
    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->a()V

    return-void
.end method

.method public final f(Lc/c/a/a/c/k/k/x;)Z
    .locals 6

    instance-of v0, p1, Lc/c/a/a/c/k/k/o;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lc/c/a/a/c/k/k/d$a;->o(Lc/c/a/a/c/k/k/x;)V

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lc/c/a/a/c/k/k/o;

    invoke-virtual {v0, p0}, Lc/c/a/a/c/k/k/o;->f(Lc/c/a/a/c/k/k/d$a;)[Lc/c/a/a/c/c;

    move-result-object v2

    invoke-virtual {p0, v2}, Lc/c/a/a/c/k/k/d$a;->d([Lc/c/a/a/c/c;)Lc/c/a/a/c/c;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lc/c/a/a/c/k/k/d$a;->o(Lc/c/a/a/c/k/k/x;)V

    return v1

    :cond_1
    invoke-virtual {v0, p0}, Lc/c/a/a/c/k/k/o;->g(Lc/c/a/a/c/k/k/d$a;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    new-instance p1, Lc/c/a/a/c/k/k/d$c;

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v2, v3}, Lc/c/a/a/c/k/k/d$c;-><init>(Lc/c/a/a/c/k/k/a;Lc/c/a/a/c/c;Lc/c/a/a/c/k/k/p;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/16 v2, 0xf

    if-ltz v0, :cond_2

    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/a/c/k/k/d$c;

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 3
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 4
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 5
    iget-wide v2, v2, Lc/c/a/a/c/k/k/d;->a:J

    .line 6
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 7
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 8
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 9
    iget-wide v4, v4, Lc/c/a/a/c/k/k/d;->a:J

    .line 10
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 11
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/16 v2, 0x10

    .line 12
    invoke-static {v0, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 13
    iget-wide v4, v2, Lc/c/a/a/c/k/k/d;->b:J

    .line 14
    invoke-virtual {v0, p1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x2

    .line 15
    sget-object v4, Lc/c/a/a/c/k/k/d;->p:Ljava/lang/Object;

    .line 16
    monitor-enter v4

    :try_start_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    iget v2, p0, Lc/c/a/a/c/k/k/d$a;->h:I

    .line 18
    iget-object v4, v0, Lc/c/a/a/c/k/k/d;->e:Lc/c/a/a/c/d;

    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->d:Landroid/content/Context;

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v4, v0, p1, v3}, Lc/c/a/a/c/e;->a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_3
    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v5, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_6

    .line 20
    invoke-static {v0, v3, v2}, Lcom/google/android/gms/common/api/GoogleApiActivity;->a(Landroid/content/Context;Landroid/app/PendingIntent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, v0, p1, v2}, Lc/c/a/a/c/d;->e(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    goto :goto_1

    .line 21
    :cond_4
    throw v3

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 23
    :cond_5
    new-instance p1, Lc/c/a/a/c/k/j;

    invoke-direct {p1, v2}, Lc/c/a/a/c/k/j;-><init>(Lc/c/a/a/c/c;)V

    invoke-virtual {v0, p1}, Lc/c/a/a/c/k/k/x;->c(Ljava/lang/RuntimeException;)V

    :cond_6
    :goto_1
    return v1
.end method

.method public final g()V
    .locals 2

    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->k()V

    sget-object v0, Lc/c/a/a/c/a;->f:Lc/c/a/a/c/a;

    invoke-virtual {p0, v0}, Lc/c/a/a/c/k/k/d$a;->q(Lc/c/a/a/c/a;)V

    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->l()V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->i()V

    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->m()V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/w;

    const/4 v0, 0x0

    throw v0
.end method

.method public final h()V
    .locals 4

    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/c/a/a/c/k/k/d$a;->j:Z

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->e:Lc/c/a/a/c/k/k/m0;

    .line 1
    sget-object v2, Lc/c/a/a/c/k/k/e0;->a:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1, v0, v2}, Lc/c/a/a/c/k/k/m0;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 2
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 3
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 4
    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 5
    iget-wide v2, v2, Lc/c/a/a/c/k/k/d;->a:J

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 7
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 8
    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    const/16 v2, 0xb

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 9
    iget-wide v2, v2, Lc/c/a/a/c/k/k/d;->b:J

    .line 10
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 11
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->f:Lc/c/a/a/c/l/j;

    .line 12
    iget-object v0, v0, Lc/c/a/a/c/l/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public final i()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lc/c/a/a/c/k/k/x;

    iget-object v4, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v4}, Lc/c/a/a/c/k/a$f;->f()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v3}, Lc/c/a/a/c/k/k/d$a;->f(Lc/c/a/a/c/k/k/x;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final j()V
    .locals 6

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    sget-object v0, Lc/c/a/a/c/k/k/d;->n:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lc/c/a/a/c/k/k/d$a;->n(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->e:Lc/c/a/a/c/k/k/m0;

    if-eqz v0, :cond_2

    .line 3
    sget-object v1, Lc/c/a/a/c/k/k/d;->n:Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/k/k/m0;->a(ZLcom/google/android/gms/common/api/Status;)V

    .line 4
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Lc/c/a/a/c/k/k/g;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/a/a/c/k/k/g;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lc/c/a/a/c/k/k/i0;

    new-instance v5, Lc/c/a/a/h/e;

    invoke-direct {v5}, Lc/c/a/a/h/e;-><init>()V

    invoke-direct {v4, v3, v5}, Lc/c/a/a/c/k/k/i0;-><init>(Lc/c/a/a/c/k/k/g;Lc/c/a/a/h/e;)V

    invoke-virtual {p0, v4}, Lc/c/a/a/c/k/k/d$a;->e(Lc/c/a/a/c/k/k/x;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lc/c/a/a/c/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lc/c/a/a/c/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lc/c/a/a/c/k/k/d$a;->q(Lc/c/a/a/c/a;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v0}, Lc/c/a/a/c/k/a$f;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    new-instance v1, Lc/c/a/a/c/k/k/t;

    invoke-direct {v1, p0}, Lc/c/a/a/c/k/k/t;-><init>(Lc/c/a/a/c/k/k/d$a;)V

    invoke-interface {v0, v1}, Lc/c/a/a/c/k/a$f;->b(Lc/c/a/a/c/l/b$e;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    .line 5
    throw v0
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/c/k/k/d$a;->l:Lc/c/a/a/c/a;

    return-void
.end method

.method public final l()V
    .locals 3

    iget-boolean v0, p0, Lc/c/a/a/c/k/k/d$a;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/16 v1, 0xb

    .line 2
    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 3
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/16 v1, 0x9

    .line 4
    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/c/a/a/c/k/k/d$a;->j:Z

    :cond_0
    return-void
.end method

.method public final m()V
    .locals 4

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 3
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 4
    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 5
    iget-wide v2, v2, Lc/c/a/a/c/k/k/d;->c:J

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final n(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/a/a/c/k/k/x;

    invoke-virtual {v1, p1}, Lc/c/a/a/c/k/k/x;->a(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final o(Lc/c/a/a/c/k/k/x;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->e:Lc/c/a/a/c/k/k/m0;

    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->b()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lc/c/a/a/c/k/k/x;->b(Lc/c/a/a/c/k/k/m0;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lc/c/a/a/c/k/k/x;->e(Lc/c/a/a/c/k/k/d$a;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lc/c/a/a/c/k/k/d$a;->c(I)V

    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {p1}, Lc/c/a/a/c/k/a$f;->g()V

    return-void
.end method

.method public final p(Z)Z
    .locals 4

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {v0}, Lc/c/a/a/c/k/a$f;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->e:Lc/c/a/a/c/k/k/m0;

    .line 3
    iget-object v2, v0, Lc/c/a/a/c/k/k/m0;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v0, v0, Lc/c/a/a/c/k/k/m0;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->m()V

    :cond_2
    return v1

    :cond_3
    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {p1}, Lc/c/a/a/c/k/a$f;->g()V

    return v3

    :cond_4
    return v1
.end method

.method public final q(Lc/c/a/a/c/a;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/j0;

    sget-object v1, Lc/c/a/a/c/a;->f:Lc/c/a/a/c/a;

    invoke-static {p1, v1}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->b:Lc/c/a/a/c/k/a$f;

    invoke-interface {p1}, Lc/c/a/a/c/k/a$f;->i()Ljava/lang/String;

    :cond_0
    const/4 p1, 0x0

    .line 1
    throw p1

    .line 2
    :cond_1
    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->f:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final t(Lc/c/a/a/c/a;)V
    .locals 5

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-static {v0}, Lc/c/a/a/c/l/q;->c(Landroid/os/Handler;)V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->i:Lc/c/a/a/c/k/k/z;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lc/c/a/a/c/k/k/z;->f:Lc/c/a/a/g/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lc/c/a/a/c/k/a$f;->g()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->k()V

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 5
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->f:Lc/c/a/a/c/l/j;

    .line 6
    iget-object v0, v0, Lc/c/a/a/c/l/j;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 7
    invoke-virtual {p0, p1}, Lc/c/a/a/c/k/k/d$a;->q(Lc/c/a/a/c/a;)V

    .line 8
    iget v0, p1, Lc/c/a/a/c/a;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 9
    sget-object p1, Lc/c/a/a/c/k/k/d;->o:Lcom/google/android/gms/common/api/Status;

    .line 10
    invoke-virtual {p0, p1}, Lc/c/a/a/c/k/k/d$a;->n(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_1
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lc/c/a/a/c/k/k/d$a;->l:Lc/c/a/a/c/a;

    return-void

    .line 11
    :cond_2
    sget-object v0, Lc/c/a/a/c/k/k/d;->p:Ljava/lang/Object;

    .line 12
    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    iget v1, p0, Lc/c/a/a/c/k/k/d$a;->h:I

    invoke-virtual {v0, p1, v1}, Lc/c/a/a/c/k/k/d;->c(Lc/c/a/a/c/a;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    iget v0, p1, Lc/c/a/a/c/a;->c:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lc/c/a/a/c/k/k/d$a;->j:Z

    :cond_3
    iget-boolean v0, p0, Lc/c/a/a/c/k/k/d$a;->j:Z

    if-eqz v0, :cond_4

    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 16
    iget-object p1, p1, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    const/16 v0, 0x9

    .line 17
    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    invoke-static {p1, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 18
    iget-wide v1, v1, Lc/c/a/a/c/k/k/d;->a:J

    .line 19
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_4
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lc/c/a/a/c/k/k/d$a;->d:Lc/c/a/a/c/k/k/a;

    .line 20
    iget-object v2, v2, Lc/c/a/a/c/k/k/a;->c:Lc/c/a/a/c/k/a;

    .line 21
    iget-object v2, v2, Lc/c/a/a/c/k/a;->b:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3f

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "API: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not available on this device. Connection failed with: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/c/a/a/c/k/k/d$a;->n(Lcom/google/android/gms/common/api/Status;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final y(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lc/c/a/a/c/k/k/d$a;->g()V

    return-void

    :cond_0
    iget-object p1, p0, Lc/c/a/a/c/k/k/d$a;->m:Lc/c/a/a/c/k/k/d;

    .line 3
    iget-object p1, p1, Lc/c/a/a/c/k/k/d;->m:Landroid/os/Handler;

    .line 4
    new-instance v0, Lc/c/a/a/c/k/k/q;

    invoke-direct {v0, p0}, Lc/c/a/a/c/k/k/q;-><init>(Lc/c/a/a/c/k/k/d$a;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.class public final Lc/c/a/a/c/k/k/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc/c/a/a/c/a;

.field public final synthetic c:Lc/c/a/a/c/k/k/d$b;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/k/k/d$b;Lc/c/a/a/c/a;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/c/k/k/u;->c:Lc/c/a/a/c/k/k/d$b;

    iput-object p2, p0, Lc/c/a/a/c/k/k/u;->b:Lc/c/a/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lc/c/a/a/c/k/k/u;->c:Lc/c/a/a/c/k/k/d$b;

    iget-object v1, v0, Lc/c/a/a/c/k/k/d$b;->f:Lc/c/a/a/c/k/k/d;

    .line 1
    iget-object v1, v1, Lc/c/a/a/c/k/k/d;->i:Ljava/util/Map;

    .line 2
    iget-object v0, v0, Lc/c/a/a/c/k/k/d$b;->b:Lc/c/a/a/c/k/k/a;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/a/a/c/k/k/d$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lc/c/a/a/c/k/k/u;->b:Lc/c/a/a/c/a;

    invoke-virtual {v1}, Lc/c/a/a/c/a;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc/c/a/a/c/k/k/u;->c:Lc/c/a/a/c/k/k/d$b;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Lc/c/a/a/c/k/k/d$b;->e:Z

    .line 5
    iget-object v1, v1, Lc/c/a/a/c/k/k/d$b;->a:Lc/c/a/a/c/k/a$f;

    .line 6
    invoke-interface {v1}, Lc/c/a/a/c/k/a$f;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lc/c/a/a/c/k/k/u;->c:Lc/c/a/a/c/k/k/d$b;

    .line 7
    iget-boolean v1, v0, Lc/c/a/a/c/k/k/d$b;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lc/c/a/a/c/k/k/d$b;->c:Lc/c/a/a/c/l/k;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lc/c/a/a/c/k/k/d$b;->a:Lc/c/a/a/c/k/a$f;

    iget-object v0, v0, Lc/c/a/a/c/k/k/d$b;->d:Ljava/util/Set;

    invoke-interface {v2, v1, v0}, Lc/c/a/a/c/k/a$f;->n(Lc/c/a/a/c/l/k;Ljava/util/Set;)V

    :cond_1
    return-void

    .line 8
    :cond_2
    :try_start_0
    iget-object v1, p0, Lc/c/a/a/c/k/k/u;->c:Lc/c/a/a/c/k/k/d$b;

    .line 9
    iget-object v1, v1, Lc/c/a/a/c/k/k/d$b;->a:Lc/c/a/a/c/k/a$f;

    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lc/c/a/a/c/k/k/u;->c:Lc/c/a/a/c/k/k/d$b;

    .line 11
    iget-object v3, v3, Lc/c/a/a/c/k/k/d$b;->a:Lc/c/a/a/c/k/a$f;

    .line 12
    invoke-interface {v3}, Lc/c/a/a/c/k/a$f;->m()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lc/c/a/a/c/k/a$f;->n(Lc/c/a/a/c/l/k;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string v2, "GoogleApiManager"

    const-string v3, "Failed to get service from broker. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lc/c/a/a/c/a;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lc/c/a/a/c/a;-><init>(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lc/c/a/a/c/k/k/u;->b:Lc/c/a/a/c/a;

    :goto_0
    invoke-virtual {v0, v1}, Lc/c/a/a/c/k/k/d$a;->t(Lc/c/a/a/c/a;)V

    return-void
.end method

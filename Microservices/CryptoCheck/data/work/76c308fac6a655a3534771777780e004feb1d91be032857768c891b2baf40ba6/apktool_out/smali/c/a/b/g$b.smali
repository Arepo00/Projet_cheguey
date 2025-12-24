.class public Lc/a/b/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/a/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final b:Lc/a/b/o;

.field public final c:Lc/a/b/q;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lc/a/b/o;Lc/a/b/q;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/b/g$b;->b:Lc/a/b/o;

    iput-object p2, p0, Lc/a/b/g$b;->c:Lc/a/b/q;

    iput-object p3, p0, Lc/a/b/g$b;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lc/a/b/g$b;->b:Lc/a/b/o;

    invoke-virtual {v0}, Lc/a/b/o;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/a/b/g$b;->b:Lc/a/b/o;

    const-string v1, "canceled-at-delivery"

    invoke-virtual {v0, v1}, Lc/a/b/o;->c(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lc/a/b/g$b;->c:Lc/a/b/q;

    .line 1
    iget-object v0, v0, Lc/a/b/q;->c:Lc/a/b/u;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lc/a/b/g$b;->b:Lc/a/b/o;

    iget-object v1, p0, Lc/a/b/g$b;->c:Lc/a/b/q;

    iget-object v1, v1, Lc/a/b/q;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lc/a/b/o;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lc/a/b/g$b;->b:Lc/a/b/o;

    iget-object v1, p0, Lc/a/b/g$b;->c:Lc/a/b/q;

    iget-object v1, v1, Lc/a/b/q;->c:Lc/a/b/u;

    .line 3
    iget-object v2, v0, Lc/a/b/o;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lc/a/b/o;->g:Lc/a/b/q$a;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Lc/a/b/q$a;->a(Lc/a/b/u;)V

    .line 4
    :cond_3
    :goto_1
    iget-object v0, p0, Lc/a/b/g$b;->c:Lc/a/b/q;

    iget-boolean v0, v0, Lc/a/b/q;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/a/b/g$b;->b:Lc/a/b/o;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lc/a/b/o;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lc/a/b/g$b;->b:Lc/a/b/o;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lc/a/b/o;->c(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lc/a/b/g$b;->d:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

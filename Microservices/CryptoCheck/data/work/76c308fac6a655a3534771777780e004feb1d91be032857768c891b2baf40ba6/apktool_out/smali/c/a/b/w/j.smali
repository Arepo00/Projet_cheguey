.class public Lc/a/b/w/j;
.super Lc/a/b/o;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/a/b/o<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final q:Ljava/lang/Object;

.field public r:Lc/a/b/q$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/b/q$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Lc/a/b/q$b;Lc/a/b/q$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lc/a/b/q$b<",
            "Ljava/lang/String;",
            ">;",
            "Lc/a/b/q$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4}, Lc/a/b/o;-><init>(ILjava/lang/String;Lc/a/b/q$a;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/a/b/w/j;->q:Ljava/lang/Object;

    iput-object p3, p0, Lc/a/b/w/j;->r:Lc/a/b/q$b;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v0, p0, Lc/a/b/w/j;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lc/a/b/w/j;->r:Lc/a/b/q$b;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lc/a/b/q$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public l(Lc/a/b/l;)Lc/a/b/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b/l;",
            ")",
            "Lc/a/b/q<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lc/a/b/l;->a:[B

    iget-object v2, p1, Lc/a/b/l;->b:Ljava/util/Map;

    const-string v3, "ISO-8859-1"

    .line 1
    invoke-static {v2, v3}, La/a/a/a/a;->j0(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lc/a/b/l;->a:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-static {p1}, La/a/a/a/a;->i0(Lc/a/b/l;)Lc/a/b/b$a;

    move-result-object p1

    .line 3
    new-instance v1, Lc/a/b/q;

    invoke-direct {v1, v0, p1}, Lc/a/b/q;-><init>(Ljava/lang/Object;Lc/a/b/b$a;)V

    return-object v1
.end method

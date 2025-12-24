.class public final synthetic Lc/c/b/i/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:Ljava/util/Map$Entry;

.field public final c:Lc/c/b/j/a;


# direct methods
.method public constructor <init>(Ljava/util/Map$Entry;Lc/c/b/j/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/i/s;->b:Ljava/util/Map$Entry;

    iput-object p2, p0, Lc/c/b/i/s;->c:Lc/c/b/j/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lc/c/b/i/s;->b:Ljava/util/Map$Entry;

    iget-object v1, p0, Lc/c/b/i/s;->c:Lc/c/b/j/a;

    .line 1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/j/b;

    invoke-interface {v0, v1}, Lc/c/b/j/b;->a(Lc/c/b/j/a;)V

    return-void
.end method

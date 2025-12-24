.class public final synthetic Lc/c/b/n/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/i/g;


# static fields
.field public static final a:Lc/c/b/n/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/b/n/b;

    invoke-direct {v0}, Lc/c/b/n/b;-><init>()V

    sput-object v0, Lc/c/b/n/b;->a:Lc/c/b/n/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/c/b/i/a;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lc/c/b/n/c;

    const-class v1, Lc/c/b/n/e;

    invoke-virtual {p1, v1}, Lc/c/b/i/a;->c(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    .line 2
    sget-object v1, Lc/c/b/n/d;->a:Lc/c/b/n/d;

    if-nez v1, :cond_1

    const-class v2, Lc/c/b/n/d;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc/c/b/n/d;->a:Lc/c/b/n/d;

    if-nez v1, :cond_0

    new-instance v1, Lc/c/b/n/d;

    invoke-direct {v1}, Lc/c/b/n/d;-><init>()V

    sput-object v1, Lc/c/b/n/d;->a:Lc/c/b/n/d;

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {v0, p1, v1}, Lc/c/b/n/c;-><init>(Ljava/util/Set;Lc/c/b/n/d;)V

    return-object v0
.end method

.class public abstract Lc/c/b/h/c0/a/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lc/c/b/h/c0/a/b;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static b:Lc/c/a/a/c/m/a;


# instance fields
.field public a:Lc/c/b/h/c0/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/b/h/c0/a/c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/c/a/a/c/m/a;

    const-string v1, "FirebaseAuth: "

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiChannelGoogleApi"

    invoke-direct {v0, v2, v1}, Lc/c/a/a/c/m/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lc/c/b/h/c0/a/a;->b:Lc/c/a/a/c/m/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lc/c/a/a/c/k/c;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lc/c/a/a/c/k/c<",
            "TT;>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc/c/b/h/c0/a/a;->a:Lc/c/b/h/c0/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Lc/c/b/h/c0/a/a;->c()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/h/c0/a/c;

    iput-object v0, p0, Lc/c/b/h/c0/a/a;->a:Lc/c/b/h/c0/a/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There was an error while initializing the connection to Google Play Services: "

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    iget-object v0, p0, Lc/c/b/h/c0/a/a;->a:Lc/c/b/h/c0/a/c;

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2
    iget-object v1, v0, Lc/c/b/h/c0/a/c;->c:Lc/c/b/h/c0/a/e;

    .line 3
    iget v2, v1, Lc/c/b/h/c0/a/e;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget v5, v1, Lc/c/b/h/c0/a/e;->b:I

    if-gt v5, v2, :cond_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    iget-object v2, v1, Lc/c/b/h/c0/a/e;->c:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v5, v1, Lc/c/b/h/c0/a/e;->a:I

    if-le v2, v5, :cond_3

    iget v1, v1, Lc/c/b/h/c0/a/e;->b:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt v1, p1, :cond_3

    .line 4
    :goto_2
    sget-object p1, Lc/c/b/h/c0/a/a;->b:Lc/c/a/a/c/m/a;

    if-eqz v3, :cond_6

    iget-object v1, v0, Lc/c/b/h/c0/a/c;->b:Lc/c/a/a/c/k/c;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "getGoogleApiForMethod() returned Fallback: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lc/c/a/a/c/m/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v0, Lc/c/b/h/c0/a/c;->b:Lc/c/a/a/c/k/c;

    return-object p1

    :cond_6
    iget-object v1, v0, Lc/c/b/h/c0/a/c;->a:Lc/c/a/a/c/k/c;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x26

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "getGoogleApiForMethod() returned Gms: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Lc/c/a/a/c/m/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, v0, Lc/c/b/h/c0/a/c;->a:Lc/c/a/a/c/k/c;

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final b(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "A::",
            "Lc/c/a/a/c/k/a$b;",
            ">(",
            "Lc/c/b/h/c0/a/f<",
            "TA;TResultT;>;)",
            "Lc/c/a/a/h/d<",
            "TResultT;>;"
        }
    .end annotation

    invoke-interface {p1}, Lc/c/b/h/c0/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/b/h/c0/a/a;->a(Ljava/lang/String;)Lc/c/a/a/c/k/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x445b

    const-string v1, "Unable to connect to GoogleApi instance - Google Play Services may be unavailable"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lc/c/b/h/c0/a/m0;->a(Lcom/google/android/gms/common/api/Status;)Lc/c/b/c;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/a/c/l/q;->w(Ljava/lang/Exception;)Lc/c/a/a/h/d;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v1, v0, Lc/c/a/a/c/k/c;->c:Lc/c/a/a/c/k/a$d;

    .line 3
    check-cast v1, Lc/c/b/h/c0/a/b;

    iget-boolean v1, v1, Lc/c/b/h/c0/a/b;->b:Z

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lc/c/b/h/c0/a/u0;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Lc/c/b/h/c0/a/u0;->u:Z

    .line 5
    :cond_1
    invoke-interface {p1}, Lc/c/b/h/c0/a/f;->b()Lc/c/a/a/c/k/k/k;

    move-result-object p1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1, p1}, Lc/c/a/a/c/k/c;->b(ILc/c/a/a/c/k/k/k;)Lc/c/a/a/h/d;

    move-result-object p1

    return-object p1
.end method

.method public abstract c()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lc/c/b/h/c0/a/c<",
            "TT;>;>;"
        }
    .end annotation
.end method

.method public final d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "A::",
            "Lc/c/a/a/c/k/a$b;",
            ">(",
            "Lc/c/b/h/c0/a/f<",
            "TA;TResultT;>;)",
            "Lc/c/a/a/h/d<",
            "TResultT;>;"
        }
    .end annotation

    invoke-interface {p1}, Lc/c/b/h/c0/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/c/b/h/c0/a/a;->a(Ljava/lang/String;)Lc/c/a/a/c/k/c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0x445b

    const-string v1, "Unable to connect to GoogleApi instance - Google Play Services may be unavailable"

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lc/c/b/h/c0/a/m0;->a(Lcom/google/android/gms/common/api/Status;)Lc/c/b/c;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/a/c/l/q;->w(Ljava/lang/Exception;)Lc/c/a/a/h/d;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    iget-object v1, v0, Lc/c/a/a/c/k/c;->c:Lc/c/a/a/c/k/a$d;

    .line 3
    check-cast v1, Lc/c/b/h/c0/a/b;

    iget-boolean v1, v1, Lc/c/b/h/c0/a/b;->b:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lc/c/b/h/c0/a/u0;

    .line 4
    iput-boolean v2, v1, Lc/c/b/h/c0/a/u0;->u:Z

    .line 5
    :cond_1
    invoke-interface {p1}, Lc/c/b/h/c0/a/f;->b()Lc/c/a/a/c/k/k/k;

    move-result-object p1

    .line 6
    invoke-virtual {v0, v2, p1}, Lc/c/a/a/c/k/c;->b(ILc/c/a/a/c/k/k/k;)Lc/c/a/a/h/d;

    move-result-object p1

    return-object p1
.end method

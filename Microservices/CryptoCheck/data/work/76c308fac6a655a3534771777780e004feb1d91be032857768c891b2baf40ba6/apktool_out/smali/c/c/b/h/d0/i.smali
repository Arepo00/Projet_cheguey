.class public final Lc/c/b/h/d0/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lc/c/a/a/c/m/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/c/a/a/c/m/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GetTokenResultFactory"

    invoke-direct {v0, v2, v1}, Lc/c/a/a/c/m/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lc/c/b/h/d0/i;->a:Lc/c/a/a/c/m/a;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lc/c/b/h/p;
    .locals 5

    :try_start_0
    invoke-static {p0}, Lc/c/b/h/d0/k;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lc/c/b/h/c0/b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lc/c/b/h/d0/i;->a:Lc/c/a/a/c/m/a;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1
    iget-object v3, v1, Lc/c/a/a/c/m/a;->a:Ljava/lang/String;

    const-string v4, "Error parsing token claims"

    invoke-virtual {v1, v4, v2}, Lc/c/a/a/c/m/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2
    sget-object v0, Lc/c/a/a/f/c/s;->h:Lc/c/a/a/f/c/o;

    .line 3
    :goto_0
    new-instance v1, Lc/c/b/h/p;

    invoke-direct {v1, p0, v0}, Lc/c/b/h/p;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-object v1
.end method

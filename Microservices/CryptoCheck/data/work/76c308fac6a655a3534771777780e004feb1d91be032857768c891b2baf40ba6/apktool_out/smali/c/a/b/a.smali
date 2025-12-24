.class public Lc/a/b/a;
.super Lc/a/b/u;
.source ""


# direct methods
.method public constructor <init>(Lc/a/b/l;)V
    .locals 0

    invoke-direct {p0, p1}, Lc/a/b/u;-><init>(Lc/a/b/l;)V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public final Lc/c/a/a/c/k/k/d$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/k/k/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lc/c/a/a/c/k/k/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/c/a/a/c/k/k/a<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lc/c/a/a/c/c;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/k/k/a;Lc/c/a/a/c/c;Lc/c/a/a/c/k/k/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/c/k/k/d$c;->a:Lc/c/a/a/c/k/k/a;

    iput-object p2, p0, Lc/c/a/a/c/k/k/d$c;->b:Lc/c/a/a/c/c;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lc/c/a/a/c/k/k/d$c;

    if-eqz v1, :cond_0

    check-cast p1, Lc/c/a/a/c/k/k/d$c;

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$c;->a:Lc/c/a/a/c/k/k/a;

    iget-object v2, p1, Lc/c/a/a/c/k/k/d$c;->a:Lc/c/a/a/c/k/k/a;

    invoke-static {v1, v2}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$c;->b:Lc/c/a/a/c/c;

    iget-object p1, p1, Lc/c/a/a/c/k/k/d$c;->b:Lc/c/a/a/c/c;

    invoke-static {v1, p1}, La/a/a/a/a;->y(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$c;->a:Lc/c/a/a/c/k/k/a;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$c;->b:Lc/c/a/a/c/c;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 1
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, La/a/a/a/a;->B0(Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$c;->a:Lc/c/a/a/c/k/k/a;

    const-string v2, "key"

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/l/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    iget-object v1, p0, Lc/c/a/a/c/k/k/d$c;->b:Lc/c/a/a/c/c;

    const-string v2, "feature"

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/l/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    invoke-virtual {v0}, Lc/c/a/a/c/l/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

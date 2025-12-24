.class public Lb/l/a/k$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/l/a/k$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/l/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "i"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I

.field public final synthetic d:Lb/l/a/k;


# direct methods
.method public constructor <init>(Lb/l/a/k;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lb/l/a/k$i;->d:Lb/l/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lb/l/a/k$i;->a:Ljava/lang/String;

    iput p3, p0, Lb/l/a/k$i;->b:I

    iput p4, p0, Lb/l/a/k$i;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/l/a/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lb/l/a/k$i;->d:Lb/l/a/k;

    iget-object v0, v0, Lb/l/a/k;->t:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget v1, p0, Lb/l/a/k$i;->b:I

    if-gez v1, :cond_0

    iget-object v1, p0, Lb/l/a/k$i;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->j()Lb/l/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/l/a/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lb/l/a/k$i;->d:Lb/l/a/k;

    iget-object v3, p0, Lb/l/a/k$i;->a:Ljava/lang/String;

    iget v4, p0, Lb/l/a/k$i;->b:I

    iget v5, p0, Lb/l/a/k$i;->c:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lb/l/a/k;->f0(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

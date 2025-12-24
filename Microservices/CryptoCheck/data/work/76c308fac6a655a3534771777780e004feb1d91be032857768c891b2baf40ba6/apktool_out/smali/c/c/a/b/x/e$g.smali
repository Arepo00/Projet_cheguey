.class public Lc/c/a/b/x/e$g;
.super Lc/c/a/b/x/e$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/b/x/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic e:Lc/c/a/b/x/e;


# direct methods
.method public constructor <init>(Lc/c/a/b/x/e;)V
    .locals 1

    iput-object p1, p0, Lc/c/a/b/x/e$g;->e:Lc/c/a/b/x/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc/c/a/b/x/e$h;-><init>(Lc/c/a/b/x/e;Lc/c/a/b/x/c;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lc/c/a/b/x/e$g;->e:Lc/c/a/b/x/e;

    iget v0, v0, Lc/c/a/b/x/e;->e:F

    return v0
.end method

.class public Lc/c/a/b/a0/b$a;
.super Lb/i/e/b/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/b/a0/b;->b(Landroid/content/Context;Lc/c/a/b/a0/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/b/a0/d;

.field public final synthetic b:Lc/c/a/b/a0/b;


# direct methods
.method public constructor <init>(Lc/c/a/b/a0/b;Lc/c/a/b/a0/d;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/b/a0/b$a;->b:Lc/c/a/b/a0/b;

    iput-object p2, p0, Lc/c/a/b/a0/b$a;->a:Lc/c/a/b/a0/d;

    invoke-direct {p0}, Lb/i/e/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)V
    .locals 2

    iget-object v0, p0, Lc/c/a/b/a0/b$a;->b:Lc/c/a/b/a0/b;

    const/4 v1, 0x1

    .line 1
    iput-boolean v1, v0, Lc/c/a/b/a0/b;->k:Z

    .line 2
    iget-object v0, p0, Lc/c/a/b/a0/b$a;->a:Lc/c/a/b/a0/d;

    invoke-virtual {v0, p1}, Lc/c/a/b/a0/d;->a(I)V

    return-void
.end method

.method public d(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/b/a0/b$a;->b:Lc/c/a/b/a0/b;

    iget v1, v0, Lc/c/a/b/a0/b;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1
    iput-object p1, v0, Lc/c/a/b/a0/b;->l:Landroid/graphics/Typeface;

    .line 2
    iget-object p1, p0, Lc/c/a/b/a0/b$a;->b:Lc/c/a/b/a0/b;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Lc/c/a/b/a0/b;->k:Z

    .line 4
    iget-object v0, p0, Lc/c/a/b/a0/b$a;->a:Lc/c/a/b/a0/d;

    .line 5
    iget-object p1, p1, Lc/c/a/b/a0/b;->l:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p1, v1}, Lc/c/a/b/a0/d;->b(Landroid/graphics/Typeface;Z)V

    return-void
.end method

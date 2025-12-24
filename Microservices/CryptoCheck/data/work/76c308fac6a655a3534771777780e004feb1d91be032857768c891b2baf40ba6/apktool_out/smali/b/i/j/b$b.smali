.class public Lb/i/j/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/i/j/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/i/j/b;->c(Landroid/content/Context;Lb/i/j/a;Lb/i/e/b/g;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/i/j/c$c<",
        "Lb/i/j/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lb/i/e/b/g;

.field public final synthetic b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lb/i/e/b/g;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lb/i/j/b$b;->a:Lb/i/e/b/g;

    iput-object p2, p0, Lb/i/j/b$b;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lb/i/j/b$g;

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lb/i/j/b$b;->a:Lb/i/e/b/g;

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p1, Lb/i/j/b$g;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lb/i/j/b$b;->a:Lb/i/e/b/g;

    iget-object p1, p1, Lb/i/j/b$g;->a:Landroid/graphics/Typeface;

    iget-object v1, p0, Lb/i/j/b$b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1}, Lb/i/e/b/g;->b(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lb/i/j/b$b;->a:Lb/i/e/b/g;

    :goto_0
    iget-object v1, p0, Lb/i/j/b$b;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1}, Lb/i/e/b/g;->a(ILandroid/os/Handler;)V

    :goto_1
    return-void
.end method

.class public Lb/i/j/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Lb/i/j/b$g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lb/i/j/a;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lb/i/j/a;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lb/i/j/b$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lb/i/j/b$a;->b:Lb/i/j/a;

    iput p3, p0, Lb/i/j/b$a;->c:I

    iput-object p4, p0, Lb/i/j/b$a;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lb/i/j/b$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lb/i/j/b$a;->b:Lb/i/j/a;

    iget v2, p0, Lb/i/j/b$a;->c:I

    invoke-static {v0, v1, v2}, Lb/i/j/b;->b(Landroid/content/Context;Lb/i/j/a;I)Lb/i/j/b$g;

    move-result-object v0

    iget-object v1, v0, Lb/i/j/b$g;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    sget-object v2, Lb/i/j/b;->a:Lb/f/f;

    iget-object v3, p0, Lb/i/j/b$a;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lb/f/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

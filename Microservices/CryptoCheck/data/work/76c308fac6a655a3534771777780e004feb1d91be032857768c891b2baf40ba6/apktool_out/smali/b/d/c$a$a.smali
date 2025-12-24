.class public Lb/d/c$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/c$a;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/DialogInterface;

.field public final synthetic c:Lb/d/c$a;


# direct methods
.method public constructor <init>(Lb/d/c$a;Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lb/d/c$a$a;->c:Lb/d/c$a;

    iput-object p2, p0, Lb/d/c$a$a;->b:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lb/d/c$a$a;->c:Lb/d/c$a;

    iget-object v0, v0, Lb/d/c$a;->b:Lb/d/c;

    iget-object v1, p0, Lb/d/c$a$a;->b:Landroid/content/DialogInterface;

    invoke-virtual {v0, v1}, Lb/d/c;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

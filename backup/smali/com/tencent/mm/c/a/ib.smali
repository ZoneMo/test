.class public final Lcom/tencent/mm/c/a/ib;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bNk:I

.field public bNl:Ljava/lang/String;

.field public bRy:[B

.field public bRz:I

.field public content:Ljava/lang/String;

.field public context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v0, p0, Lcom/tencent/mm/c/a/ib;->bNk:I

    .line 32
    iput v0, p0, Lcom/tencent/mm/c/a/ib;->bRz:I

    return-void
.end method

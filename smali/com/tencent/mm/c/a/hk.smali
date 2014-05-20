.class public final Lcom/tencent/mm/c/a/hk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bLX:I

.field public bLY:I

.field public bLZ:I

.field public bMa:Ljava/lang/String;

.field public bMb:I

.field public desc:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public visible:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/hk;->visible:Z

    return-void
.end method

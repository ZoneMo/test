.class public final Lcom/tencent/mm/c/a/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bMn:Lcom/tencent/mm/protocal/a/fx;

.field public bMo:Ljava/lang/String;

.field public bMp:I

.field public desc:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v0, p0, Lcom/tencent/mm/c/a/y;->type:I

    .line 20
    iput v0, p0, Lcom/tencent/mm/c/a/y;->bMp:I

    return-void
.end method

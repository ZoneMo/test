.class final Lcom/tencent/mm/sdk/platformtools/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bUd:I

.field dMK:F

.field dML:F

.field gdp:I

.field time:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, -0x3b86

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/w;->dMK:F

    .line 340
    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/w;->dML:F

    .line 341
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/w;->gdp:I

    .line 343
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/mm/sdk/platformtools/w;->bUd:I

    return-void
.end method

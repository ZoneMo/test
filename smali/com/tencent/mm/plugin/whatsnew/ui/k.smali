.class final Lcom/tencent/mm/plugin/whatsnew/ui/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field cQU:I

.field ffN:Lcom/tencent/mm/plugin/whatsnew/ui/l;

.field ffO:Ljava/lang/String;

.field ffP:Z

.field month:I

.field year:I


# direct methods
.method public constructor <init>(IIILcom/tencent/mm/plugin/whatsnew/ui/l;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 815
    iput p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->year:I

    .line 816
    iput p2, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->month:I

    .line 817
    iput p3, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->cQU:I

    .line 818
    iput-object p4, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffN:Lcom/tencent/mm/plugin/whatsnew/ui/l;

    .line 819
    iput-object p5, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffO:Ljava/lang/String;

    .line 820
    iput-boolean p6, p0, Lcom/tencent/mm/plugin/whatsnew/ui/k;->ffP:Z

    .line 821
    return-void
.end method

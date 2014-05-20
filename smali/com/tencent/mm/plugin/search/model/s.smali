.class public final Lcom/tencent/mm/plugin/search/model/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public content:Ljava/lang/String;

.field public dKv:I

.field public ehk:I

.field public ehl:I

.field public ehm:I

.field public ehn:I


# direct methods
.method private constructor <init>(IIILjava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Lcom/tencent/mm/plugin/search/model/s;->ehk:I

    .line 64
    iput p2, p0, Lcom/tencent/mm/plugin/search/model/s;->ehl:I

    .line 65
    iput p3, p0, Lcom/tencent/mm/plugin/search/model/s;->ehm:I

    .line 66
    iput-object p4, p0, Lcom/tencent/mm/plugin/search/model/s;->content:Ljava/lang/String;

    .line 67
    iput p5, p0, Lcom/tencent/mm/plugin/search/model/s;->ehn:I

    .line 68
    iput p6, p0, Lcom/tencent/mm/plugin/search/model/s;->dKv:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;IIB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    invoke-direct/range {p0 .. p6}, Lcom/tencent/mm/plugin/search/model/s;-><init>(IIILjava/lang/String;II)V

    return-void
.end method

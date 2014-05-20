.class final Lcom/tencent/mm/model/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic chV:Lcom/tencent/mm/model/y;

.field filename:Ljava/lang/String;

.field pos:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/mm/model/y;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/mm/model/ac;->chV:Lcom/tencent/mm/model/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/tencent/mm/model/ac;->url:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/tencent/mm/model/ac;->filename:Ljava/lang/String;

    .line 39
    iput p4, p0, Lcom/tencent/mm/model/ac;->pos:I

    .line 40
    return-void
.end method

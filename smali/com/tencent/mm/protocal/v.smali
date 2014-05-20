.class public final Lcom/tencent/mm/protocal/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fxZ:[I

.field private final fya:[I

.field private final fyb:I

.field private final fyc:I


# direct methods
.method public constructor <init>([III)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/mm/protocal/v;->fxZ:[I

    .line 186
    iput-object p1, p0, Lcom/tencent/mm/protocal/v;->fya:[I

    .line 187
    iput p2, p0, Lcom/tencent/mm/protocal/v;->fyb:I

    .line 188
    iput p3, p0, Lcom/tencent/mm/protocal/v;->fyc:I

    .line 189
    return-void
.end method


# virtual methods
.method public final awL()[I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/mm/protocal/v;->fxZ:[I

    return-object v0
.end method

.method public final awM()[I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/mm/protocal/v;->fya:[I

    return-object v0
.end method

.method public final awN()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/tencent/mm/protocal/v;->fyb:I

    return v0
.end method

.method public final awO()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/tencent/mm/protocal/v;->fyc:I

    return v0
.end method
